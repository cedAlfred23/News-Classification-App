import 'package:flutter/material.dart';

Widget button({
  @required void Function()? onPressed,
  void Function()? onLongPressed,
  required String? text,
  Color? color,
  Color? textColor,
  bool colorFill = true,
  required BuildContext context,
  double divideWidth = 0.8,
  bool useWidth = true,
  double buttonRadius = 10,
  double height = 40,
  double elevation = 0,
  Color? backgroundcolor,
  bool showLoadingIndicator = false,
  TextStyle? textStyle,
  Widget? leadingIcon,
  bool showBorder = true,
  EdgeInsetsGeometry? padding,
  bool centerItems = false,
  BorderRadiusGeometry? borderRadiusGeometry,
  Widget? postFixIcon,
  ButtonStyle? style,
  Widget? icon,
}) {
  final theme = Theme.of(context);
  return SizedBox(
    width: useWidth ? MediaQuery.of(context).size.width * divideWidth : null,
    height: height,
    child: TextButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: TextButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        padding: padding,
        enableFeedback: false,
        elevation: elevation,
        foregroundColor: textColor ?? theme.colorScheme.onPrimary,
        backgroundColor: colorFill
            ? color ?? theme.colorScheme.primary
            : backgroundcolor ?? theme.scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          side: showBorder
              ? BorderSide(color: color ?? theme.colorScheme.primary)
              : BorderSide(width: 0, color: color ?? theme.colorScheme.primary),
          borderRadius:
              borderRadiusGeometry ?? BorderRadius.circular(buttonRadius),
        ),
        textStyle: textStyle ?? theme.textTheme.bodyMedium,
      ),
      child: showLoadingIndicator
          ? SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  theme.primaryColor,
                ),
                strokeWidth: 2,
              ),
            )
          : leadingIcon == null && postFixIcon == null
              ? Text(
                  "$text",
                  textAlign: TextAlign.center,
                  style: textStyle ??
                      theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: textColor ?? theme.colorScheme.onPrimary,
                      ),
                )
              : Row(
                  mainAxisAlignment: centerItems
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    if (leadingIcon != null) leadingIcon,
                    const SizedBox(width: 10),
                    Text(
                      "$text",
                      style: textStyle ??
                          theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: textColor ?? theme.colorScheme.onPrimary,
                          ),
                    ),
                    if (postFixIcon != null) const SizedBox(width: 10),
                    if (postFixIcon != null) postFixIcon,
                  ],
                ),
    ),
  );
}