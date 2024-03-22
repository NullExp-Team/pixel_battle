import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../controller/admin_controller.dart';

class UsersPanel extends HookConsumerWidget {
  const UsersPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adminControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SText.title('Пользователи'),
            const Gap(12),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 20,
                ),
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  return SText.text(state.users[index].nickname ?? '');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
