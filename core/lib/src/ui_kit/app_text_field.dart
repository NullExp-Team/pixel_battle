import 'package:dev_kit/core_dev_kit.dart';
import 'package:flutter/material.dart';

import '../../../core.dart';

class AppTextField extends HookConsumerWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.decoration,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.errorText,
    this.isPassword = false,
    this.labelText,
    this.label,
    this.hintText,
    this.isLoading = false,
    this.padding = EdgeInsets.zero,
    this.textAlign,
    this.validator,
    this.onTap,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType keyboardType;
  final bool readOnly;
  final FutureOr<void> Function(String value)? onChanged;
  final FutureOr<void> Function(String value)? onSubmitted;
  final VoidCallback? onEditingComplete;

  final bool isLoading;

  final String? errorText;

  final bool isPassword;
  final String? labelText;
  final Widget? label;
  final String? hintText;

  final TextAlign? textAlign;

  final EdgeInsetsGeometry padding;
  final SingleValidatorBase? validator;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final validator = this.validator;
    Future<void> onChanged(String value) async {
      await this.onChanged?.call(value);
      validator?.softValidate();
    }

    final onEditingComplete = this.onEditingComplete ?? validator?.validate;
    final errorText = this.errorText ??
        (validator != null ? ref.watch(validator.errorProvider) : null);

    final obscureText = useState(isPassword);

    final hookFocus = useFocusNode();

    final focus = focusNode ?? hookFocus;

    final hasFocus = useState(focus.hasFocus);
    final hasError = errorText != null;

    final errorAnimationController =
        useAnimationController(duration: const Duration(milliseconds: 300));

    useEffect(() {
      void listener() {
        if (!focus.hasPrimaryFocus && !readOnly) {
          onEditingComplete?.call();
        }
        hasFocus.value = focus.hasFocus;
      }

      if (!readOnly) focus.addListener(listener);

      if (hasError) {
        errorAnimationController.forward();
      } else {
        errorAnimationController.reverse();
      }

      return () => focus.removeListener(listener);
    });

    return Padding(
      padding: padding,
      child: Column(
        children: [
          // if (labelText != null && label == null)
          //   Align(
          //     alignment: Alignment.centerLeft,
          //     child: Padding(
          //       padding: const EdgeInsets.only(bottom: 6),
          //       child: SText.titleSmall(
          //         labelText!,
          //         color: colors.textPrimary,
          //       ),
          //     ),
          //   ),
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: label,
            ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: readOnly ? colors.backgroundMinor : colors.backgroundMinor,
              border: Border.all(
                width: 2,
                color: switch (readOnly) {
                  true => colors.divider,
                  false => hasFocus.value
                      ? hasError
                          ? colors.alert
                          : colors.text
                      : hasError
                          ? colors.alert
                          : colors.divider,
                },
              ),
            ),
            child: TextField(
              onTap: onTap,
              controller: controller,
              focusNode: focus,
              keyboardType: keyboardType,
              readOnly: readOnly,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              onEditingComplete: onEditingComplete,
              obscureText: obscureText.value,
              textAlign: textAlign ?? TextAlign.start,
              style: readOnly
                  ? textStyles.text.copyWith(
                      color: colors.textMinor,
                    )
                  : textStyles.text,
              decoration: (decoration ?? const InputDecoration()).copyWith(
                contentPadding: const EdgeInsets.all(18),
                hintText: !hasFocus.value ? hintText : null,
                hintStyle: textStyles.text.copyWith(
                  color: colors.textMinor,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                suffixIcon: isLoading
                    ? const Center(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(strokeWidth: 3),
                          ),
                        ),
                      )
                    : isPassword
                        ? InkWell(
                            borderRadius: BorderRadius.circular(99),
                            onTap: () {
                              obscureText.value = !obscureText.value;
                            },
                            child: obscureText.value
                                ? const Icon(
                                    Icons.visibility_off_outlined,
                                    size: 20,
                                  )
                                : const Icon(
                                    Icons.visibility_outlined,
                                    size: 20,
                                  ),
                          )
                        : null,
              ),
            ),
          ),
          _Error(errorText: errorText)
        ],
      ),
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
          child: SText.text(
            lastErrorText,
            color: colors.alert,
          ),
        ),
      ),
    );
  }
}
