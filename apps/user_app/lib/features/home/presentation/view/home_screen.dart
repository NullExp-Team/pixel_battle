import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/canvas/pixel_field.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const PixelField();

    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      backgroundColor: colors.alert,
      body: const Stack(
        children: [
          PixelField(),
        ],
      ),
    );
  }
}
