import 'package:core/core.dart';
import 'package:flutter/material.dart';

class UsersPanel extends HookConsumerWidget {
  const UsersPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.topLeft,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: []),
      ),
    );
  }
}
