import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core.dart';

final _appWrapKey = GlobalKey();

class AppWrapper extends StatelessWidget {
  const AppWrapper({
    super.key,
    required WidgetBuilder builder,
  }) : _builder = builder;

  final WidgetBuilder _builder;

  /// Use only in MaterialApp.builder
  static Widget builder(BuildContext context, Widget? child) {
    ToastManager.allowDisplayToasts();

    return AppWrapper(
      builder: (context) => ColoredBox(
        color: context.colors.grey102,
        child: FadeAnimated(
          duration: const Duration(milliseconds: 300),
          child: child,
        ),
      ),
    );
  }

  /// Use only for theme, localization and toast.
  static BuildContext get currentContext {
    final context = _appWrapKey.currentContext;
    if (context != null) return context;

    throw Exception(
      'Не удалось получить контекст из AppWrap. '
      'Возможно, в дереве виджетов отсутствует AppWrap',
    );
  }

  @override
  Widget build(BuildContext context) {
    final toastBuilder = FToastBuilder();

    return DevicePreview.appBuilder(
      context,
      toastBuilder(
        context,
        SizedBox(
          key: _appWrapKey,
          child: Builder(
            builder: _builder,
          ),
        ),
      ),
    );
  }
}
