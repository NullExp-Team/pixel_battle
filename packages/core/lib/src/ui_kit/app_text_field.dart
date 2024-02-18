import 'package:dev_kit/core_dev_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../core.dart';

enum _Style {
  fill,
  // outline,
  text,
}

class AppTextField extends HookConsumerWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.labelText,
    this.hintText,
    this.errorText,
    this.isReadOnly = false,
    this.isLoading = false,
    this.isPassword = false,
    this.prefixIcon,
    this.textAlign,
    this.padding = EdgeInsets.zero,
    this.validator,
  })  : _style = _Style.fill,
        isUnderlined = false;

  const AppTextField.text({
    super.key,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.labelText,
    this.hintText,
    this.errorText,
    this.isReadOnly = false,
    this.isLoading,
    this.isPassword = false,
    this.isUnderlined = true,
    this.prefixIcon,
    this.textAlign,
    this.padding = EdgeInsets.zero,
    this.validator,
  }) : _style = _Style.text;

  final TextEditingController? controller;

  final FutureOr<void> Function(String value)? onChanged;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  final String? labelText;
  final String? hintText;
  final String? errorText;

  final bool isReadOnly;
  final bool isUnderlined;
  final bool? isLoading;
  final bool isPassword;

  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry padding;

  final SingleValidatorBase? validator;

  final _Style _style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Validator setup

    final validator = this.validator;
    Future<void> onChanged(String value) async {
      await this.onChanged?.call(value);
      validator?.softValidate();
    }

    useEffect(
      () {
        if (validator?.label == null) {
          validator?.setLabel(labelText);
        }
      },
      [labelText],
    );

    useEffect(
      () {
        if (isReadOnly) Future(() => validator?.clearError());
      },
      [isReadOnly],
    );

    final onEditingComplete = this.onEditingComplete ?? validator?.validate;
    final errorText = this.errorText ??
        (validator != null ? ref.watch(validator.errorProvider) : null);

    // TextField setup

    final hookFocus = useFocusNode();
    final focus = focusNode ?? hookFocus;
    final hasFocus = useState(focus.hasFocus);
    final hasError = errorText != null;

    useEffect(() {
      void listener() {
        if (!focus.hasPrimaryFocus && !isReadOnly) {
          onEditingComplete?.call();
        }
        hasFocus.value = focus.hasFocus;
      }

      focus.addListener(listener);
      return () => focus.removeListener(listener);
    });

    final hookContoller = useTextEditingController();
    final controller = this.controller ?? hookContoller;

    void clearText() {
      controller.clear();
      // MaskTextInputFormatter сам хранит текст и он не обновляет при очистке контроллера
      inputFormatters
          ?.whereType<MaskTextInputFormatter>()
          .forEach((e) => e.clear());

      onChanged('');
    }

    return Builder(
      builder: (context) {
        final inputBorder = switch (_style) {
          _Style.fill => OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(12),
            ),
          _Style.text => UnderlineInputBorder(
              borderSide: BorderSide(
                color: isUnderlined ? colors.grey102 : Colors.transparent,
              ),
            ),
        };

        return Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (labelText != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: SText.textS(
                    labelText!,
                    color: colors.grey100,
                  ),
                ),
              TextField(
                controller: controller,
                // canRequestFocus: !isReadOnly,
                focusNode: focus,
                readOnly: isReadOnly,
                keyboardType: keyboardType,
                onChanged: onChanged,
                inputFormatters: inputFormatters,
                onEditingComplete: onEditingComplete,
                textAlign: textAlign ?? TextAlign.start,
                style: textStyles.text.copyWith(color: colors.black),
                cursorColor: colors.black,
                decoration: InputDecoration(
                  filled: switch (_style) {
                    _Style.fill => true,
                    _Style.text => false,
                  },
                  contentPadding: switch (_style) {
                    _Style.fill => const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 18,
                      ),
                    _Style.text => const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                  },
                  fillColor: colors.white,
                  hintText: hintText,
                  hintStyle: textStyles.text.copyWith(color: colors.grey100),
                  border: inputBorder,
                  enabledBorder: hasError
                      ? inputBorder.copyWith(
                          borderSide: BorderSide(color: colors.error),
                        )
                      : inputBorder,
                  focusedBorder: hasError
                      ? inputBorder.copyWith(
                          borderSide: BorderSide(color: colors.error, width: 2),
                        )
                      : inputBorder.copyWith(
                          borderSide:
                              BorderSide(color: colors.primary101, width: 2),
                        ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 16,
                  ),
                  prefixIcon: prefixIcon != null
                      ? AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: prefixIcon,
                        )
                      : prefixIcon,
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 48,
                  ),
                  suffixIcon: HookConsumer(
                    builder: (context, ref, _) {
                      final isEmpty = useState(controller.text.isEmpty);

                      useEffect(
                        () {
                          void listener() =>
                              isEmpty.value = controller.text.isEmpty;
                          listener();
                          controller.addListener(listener);
                          return () => controller.removeListener(listener);
                        },
                        [controller],
                      );

                      final isLoading = this.isLoading ??
                          (validator is SingleAsyncValidator
                              ? ref.watch(validator.loadingProvider)!
                              : false);

                      return AnimatedSize(
                        duration: const Duration(milliseconds: 250),
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          transitionBuilder: (child, animation) =>
                              FadeTransition(
                            opacity: CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInOut,
                            ),
                            child: ScaleTransition(
                              scale: Tween<double>(begin: 0.7, end: 1)
                                  .animate(animation),
                              child: child,
                            ),
                          ),
                          child: isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child:
                                      CircularProgressIndicator(strokeWidth: 3),
                                )
                              : !isEmpty.value && !isReadOnly
                                  ? IconButton(
                                      onPressed: clearText,
                                      icon: Assets.icons.closeCircle.svg(
                                        colorFilter: ColorFilter.mode(
                                          colors.grey100,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    )
                                  : null,
                        ),
                      );
                    },
                  ),
                ),
              ),
              _Error(errorText: errorText),
            ],
          ),
        );
      },
    );
  }
}

class _Error extends StatefulHookConsumerWidget {
  const _Error({
    required this.errorText,
  });

  final String? errorText;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __ErrorState();
}

class __ErrorState extends ConsumerState<_Error> {
  String lastErrorText = '';

  @override
  Widget build(BuildContext context) {
    final errorText = widget.errorText;
    if (errorText != null) lastErrorText = errorText;

    final errorAnimationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );

    if (errorText != null) {
      errorAnimationController.forward();
    } else {
      errorAnimationController.reverse();
    }

    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: errorAnimationController,
        curve: Curves.easeInOut,
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: errorAnimationController,
            curve: Curves.easeInOut,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 4),
          child: SText.textS(
            lastErrorText,
            color: colors.error,
          ),
        ),
      ),
    );
  }
}
