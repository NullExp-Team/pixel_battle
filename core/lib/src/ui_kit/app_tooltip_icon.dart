import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

import '../../core.dart';

class AppTooltipIcon extends StatelessWidget {
  const AppTooltipIcon({
    super.key,
    required this.title,
    required this.label,
  });

  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return JustTheTooltip(
      isModal: true,
      backgroundColor: colors.white,
      borderRadius: BorderRadius.circular(8),
      triggerMode: TooltipTriggerMode.tap,
      tailBaseWidth: 20,
      tailLength: 8,
      offset: 6,
      tailBuilder: (top, right, left) {
        const moveValue = 3;
        return Path()
          ..moveTo(left.dx, left.dy)
          ..cubicTo(
            left.dx + moveValue,
            left.dy,
            top.dx - moveValue,
            top.dy,
            top.dx,
            top.dy,
          )
          ..cubicTo(
            top.dx + moveValue,
            top.dy,
            right.dx - moveValue,
            right.dy,
            right.dx,
            right.dy,
          )
          ..close();
      },
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$title\n',
                style: textStyles.textSAccent.copyWith(color: colors.black),
              ),
              TextSpan(
                text: label,
                style: textStyles.textS.copyWith(color: colors.black),
              ),
            ],
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(4),
        child: Icon(Icons.info),
      ),
    );
  }
}
