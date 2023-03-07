import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/constants/app_assests.dart';
import '../shared/constants/app_strings.dart';
import '../config/device_config.dart';
import '../shared/styles/custome_style.dart';
import '../shared/styles/themes/colors.dart';

/// Create a text field widget that is customed from [TextFormField].
///
/// Default [AppTextFormField]'s input border will define a [OutlineInputBorder],
/// apply theme for hintTextStyle, textStyles, errorTextStyle
/// and reponsive for mobile, tablet and desktop.
class AppTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputAction? inputAction;
  final bool isSecureText;
  final String? Function(String? str)? onValidate;
  final void Function(String? str)? onCompleted;
  const AppTextFormField({
    super.key,
    this.controller,
    this.focusNode,
    this.hintText = '',
    this.errorText,
    this.prefixIcon,
    this.inputFormatter,
    this.inputAction,
    this.isSecureText = false,
    this.onValidate,
    this.onCompleted,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  /// If [isObscureText] is true, trailing icon is open-eye-icon and text is
  /// entered that will replace to obscuringCharacter.
  /// Else if it's false, trailing icon is close-eye-icon and text will be shown.
  bool isObscureText = false;

  /// Handle event when user click trailing icon to hide/show text.
  void onChangeStateInputText() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    InputBorder? _textFieldBorder;
    TextStyle? _hindTextStyle;
    TextStyle? _inputTextStyle;
    String? _obscuringCharacter;
    double _fieldHeight;
    var _preffixIconSize;
    var _suffixIconSize;
    var _contentPadding;
    var _preffixIconPadding;
    var _suffixIconPadding;

    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _obscuringCharacter = AppStrings.dotSymbol;
        _hindTextStyle = AppCustomeStyle.hindTextField;
        _inputTextStyle = Theme.of(context).textTheme.displaySmall;
        _textFieldBorder = OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.grey30,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(20),
        );
        _fieldHeight = widget.errorText != null ? 80 : 55;
        _contentPadding = const EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 10,
        );
        _preffixIconSize = Size(45, 45);
        _preffixIconPadding = const EdgeInsets.symmetric(horizontal: 10);
        _suffixIconSize = Size(45, 45);
        _suffixIconPadding = const EdgeInsets.symmetric(horizontal: 10);
        break;
      case DeviceScreenType.tablet:
      case DeviceScreenType.desktop:
        _obscuringCharacter = AppStrings.dotSymbolTablet;
        _hindTextStyle = AppCustomeStyle.hindTextFieldTablet;
        _inputTextStyle = Theme.of(context).textTheme.displayMedium;
        _textFieldBorder = OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.grey30,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(25),
        );
        _fieldHeight = widget.errorText != null ? 85 : 65;
        _contentPadding = const EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 20,
        );
        _preffixIconSize = Size(72, 45);
        _preffixIconPadding = const EdgeInsets.symmetric(horizontal: 20);
        _suffixIconSize = Size(72, 45);
        _suffixIconPadding = const EdgeInsets.symmetric(horizontal: 20);
        break;
    }

    return TextFormField(
      style: _inputTextStyle,
      cursorColor: AppColor.cursorColor,
      obscureText: widget.isSecureText && isObscureText,
      obscuringCharacter: _obscuringCharacter,
      keyboardAppearance: Brightness.dark,
      textInputAction: widget.inputAction,
      decoration: InputDecoration(
        isDense: true,
        constraints: BoxConstraints.tightForFinite(height: _fieldHeight),
        contentPadding: _contentPadding,
        hintText: widget.hintText,
        hintStyle: _hindTextStyle,
        errorText: widget.errorText,
        errorStyle: AppCustomeStyle.errorTextStyle,
        prefixIconConstraints: BoxConstraints.tight(_preffixIconSize),
        prefixIcon: Padding(
          padding: _preffixIconPadding,
          child: widget.prefixIcon,
        ),
        suffixIconConstraints: BoxConstraints.tight(_suffixIconSize),
        suffixIcon: widget.isSecureText
            ? InkWell(
                onTap: onChangeStateInputText,
                child: Padding(
                  padding: _suffixIconPadding,
                  child: SvgPicture.asset(
                      isObscureText ? AppAssets.invisible : AppAssets.visible),
                ),
              )
            : null,
        enabledBorder: _textFieldBorder,
        focusedBorder: _textFieldBorder,
        border: _textFieldBorder,
      ),
      validator: widget.onValidate,
      onFieldSubmitted: widget.onCompleted,
    );
  }
}
