import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/styles/custome_style.dart';
import '../shared/styles/themes/colors.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatter;
  final bool isSecureText;
  final String? Function(String? str)? onValidate;
  final void Function(String? str)? onCompleted;
  const AppTextFormField({
    super.key,
    this.controller,
    this.focusNode,
    this.hintText = '',
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatter,
    this.isSecureText = false,
    this.onValidate,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    /// The default border textfield
    InputBorder _textFieldBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColor.grey30,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(20),
    );
    return TextFormField(
      style: Theme.of(context).textTheme.displaySmall,
      cursorColor: AppColor.active,
      obscureText: isSecureText,
      keyboardAppearance: Brightness.dark,
      decoration: InputDecoration(
        isDense: true,
        constraints: BoxConstraints.tight(Size(double.infinity, 60)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
        hintText: hintText,
        hintStyle: AppCustomeStyle.labelTextField,
        prefixIconConstraints: BoxConstraints.tight(Size(45, 45)),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: suffixIcon,
        ),
        suffixIconConstraints: BoxConstraints.tight(Size(45, 45)),
        enabledBorder: _textFieldBorder,
        focusedBorder: _textFieldBorder,
      ),
      validator: onValidate,
      onFieldSubmitted: onCompleted,
    );
  }
}
