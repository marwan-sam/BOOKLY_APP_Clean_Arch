import 'package:flutter/material.dart';

class InputTextForm extends StatelessWidget {
  InputTextForm({
    super.key,
    required this.textHint,
    required this.textHintStyle,
    required this.colorBorder,
    required this.colorBorderFocused,
    required this.styleInput,
    this.radius = 8,
    this.sizeIconSuffix = 22,
    this.sizeIconPrefix = 22,
    this.controller,
    this.type,
    this.onSubmit,
    this.onChanged,
    this.onTap,
    this.validate,
    this.suffixClick,
    this.colorIcons,
    this.suffix,
    this.prefix,
    this.isClickable = true,
    this.isPassword = false,
  });
  final TextStyle styleInput;
  TextEditingController? controller;
  TextInputType? type;
  final String textHint;
  final TextStyle textHintStyle;
  IconData? prefix;
  Color? colorIcons;
  final Color colorBorder;
  final Color colorBorderFocused;
  double sizeIconSuffix;
  double sizeIconPrefix;

  double radius;
  bool isClickable;
  IconData? suffix;
  bool isPassword;
  // Functions :
  void Function(String)? onSubmit;
  void Function(String)? onChanged;
  VoidCallback? onTap;
  FormFieldValidator<String>? validate;
  VoidCallback? suffixClick;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // * to get style text :
      style: styleInput,
      // * is Pass :
      obscureText: isPassword,
      // * Taken Value By :
      controller: controller,
      // * Type Input : (Add Key @ On Keyboard)
      keyboardType: type,
      // * Value Input : (After Clicked On Enter Or By Keyboard Clicked On Submit)
      onFieldSubmitted: onSubmit,
      // * On Changed On Input : (Output Every Input Char Changed)
      onChanged: onChanged,
      // * On Tap == On Clicked
      onTap: onTap,
      // * If use as () and wanna not to open keyboard :
      enabled: isClickable,
      // * Form Decoration :
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorderFocused,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(
            color: colorBorder,
          ),
        ),
        // * Text Show (Hints) :
        // hintText: 'Enter E-mail Address',
        labelText: textHint,
        // * Text Hint Style :
        labelStyle: textHintStyle,

        // * Border Style :
        // border: InputBorder.none
        border: const OutlineInputBorder(),

        // * We Can Use 2 Icon In It
        prefixIcon: Icon(
          // -> From Type IconData
          prefix,
          color: colorIcons,
          size: sizeIconPrefix,
        ),
        // * suffixIcon :
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixClick,
                icon: Icon(
                  size: sizeIconSuffix,
                  suffix,
                  color: colorIcons,
                ),
              )
            : null,
      ),
      // * Value Validate is Empty
      validator: validate,
    );
  }
}
