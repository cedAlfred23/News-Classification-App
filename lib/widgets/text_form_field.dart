// import 'package:flutter/material.dart';
// import 'package:news_classification_app/config/constants.dart';

// class CustomTextFormField extends StatefulWidget {
//   final void Function()? onTap;
//   final String hintText;
//   final String? labelText;
//   final String? validateMsg;
//   final IconData? icon;
//   final IconData? prefixIcon;
//   final Color? iconColor;
//   final Color? prefixIconColor;
//   final Color? cursorColor;
//   final Color? textColor;
//   final Color? labelColor;
//   final Color? backgroundColor;
//   final Color? hintTextColor;
//   final TextEditingController? controller;
//   final bool validate = true;
//   final bool? suggestion;
//   final TextInputType inputType;
//   final int maxLine = 1;
//   final int minLine = 1;
//   final bool? validateEmail;
//   final double cursorHeight = 20;
//   final bool enable = true;
//   final bool removeBorder = false;
//   final bool removeOutline;
//   final bool autofocus = false;
//   final void Function()? onIconTap;
//   final TextInputAction? inputAction;
//   final void Function()? onEditingComplete;
//   final void Function(String text)? onTextChange;
//   final void Function(String text)? onFieldSubmitted;
//   final String? Function(String text)? validator;
//   final FocusNode? focusNode;
//   final bool? readOnly;
//   final bool showBorderRound = false;
//   final Color? borderColor;
//   final TextCapitalization? textCapitalization;
//   final int? maxLength;
//   final double borderWidth = 1;
//   final double borderRadius = 10;
//   final bool isDense = true;
//   final double? height = 15;
//   final double? width;
//   const CustomTextFormField({
//     super.key,
//     this.onTap,
//     required this.hintText,
//     this.labelText,
//     this.validateMsg,
//     this.icon,
//     this.width,
//     this.prefixIcon,
//     this.validateEmail = false,
//     this.suggestion = false,
//     this.iconColor,
//     this.prefixIconColor,
//     this.cursorColor,
//     this.textColor,
//     this.labelColor,
//     this.backgroundColor,
//     this.textCapitalization = TextCapitalization.sentences,
//     this.controller,
//     this.onIconTap,
//     this.inputAction,
//     this.onEditingComplete,
//     this.onTextChange,
//     this.onFieldSubmitted,
//     this.validator,
//     this.focusNode,
//     this.borderColor,
//     this.maxLength,
//     this.readOnly = false,
//     this.removeOutline = false,
//     this.inputType = TextInputType.text,
//     this.hintTextColor,
//   });

//   @override
//   State<CustomTextFormField> createState() => _ATextFormFieldState();
// }

// class _ATextFormFieldState extends State<CustomTextFormField> {
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final theme = Theme.of(context);
//     return SizedBox(
//       width: widget.width,
//       child: TextFormField(
//         onTap: widget.onTap,
//         readOnly: widget.readOnly!,
//         enableInteractiveSelection: true,
//         enabled: widget.enable,
//         enableSuggestions: widget.suggestion!,
//         keyboardType: widget.inputType,
//         controller: widget.controller,
//         minLines: widget.minLine,
//         maxLines: widget.maxLine,
//         maxLength: widget.maxLength,
//         focusNode: widget.focusNode,
//         autofocus: widget.autofocus,
//         onFieldSubmitted: (value) => (text) => widget.onFieldSubmitted!(text),
//         textInputAction: widget.inputAction,
//         cursorColor: widget.cursorColor,
//         cursorHeight: widget.cursorHeight,
//         textCapitalization: widget.validateEmail!
//             ? TextCapitalization.none
//             : widget.textCapitalization!,
//         style: textTheme.bodyMedium!.copyWith(color: widget.textColor),
//         onEditingComplete: widget.onEditingComplete,
//         onChanged: widget.onTextChange == null
//             ? null
//             : (text) => widget.onTextChange!(text),
//         decoration: InputDecoration(
//           // constraints: BoxConstraints(maxHeight: 50, minHeight: 50),
//           contentPadding: widget.height == null
//               ? EdgeInsets.symmetric(vertical: 15, horizontal: 10)
//               : EdgeInsets.symmetric(vertical: widget.height!, horizontal: 10),
//           isDense: widget.isDense,
//           hintText: widget.hintText,
//           hintStyle:
//               textTheme.bodyMedium!.copyWith(color: widget.hintTextColor),
//           labelText: widget.labelText,
//           labelStyle: textTheme.bodyMedium!.copyWith(color: widget.textColor),
//           filled: true,
//           fillColor: widget.backgroundColor ?? theme.scaffoldBackgroundColor,
//           suffixIcon: widget.icon == null
//               ? null
//               : IconButton(
//                   onPressed: widget.onIconTap,
//                   icon: Icon(
//                     widget.icon,
//                     color: theme.iconTheme.color,
//                   ),
//                 ),
//           prefixIcon: widget.prefixIcon == null
//               ? null
//               : Icon(widget.prefixIcon, color: theme.iconTheme.color),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             borderSide: widget.removeOutline
//                 ? BorderSide.none
//                 : BorderSide(
//                     color: widget.borderColor ?? theme.primaryColor,
//                     width: widget.borderWidth,
//                   ),
//           ),
//           disabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             borderSide: widget.removeOutline
//                 ? BorderSide.none
//                 : BorderSide(
//                     color: widget.borderColor ?? theme.primaryColor,
//                     width: widget.borderWidth,
//                   ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             borderSide: BorderSide(
//               color: theme.colorScheme.primary,
//               width: widget.borderWidth,
//             ),
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(widget.borderRadius),
//             borderSide: widget.removeOutline
//                 ? BorderSide.none
//                 : BorderSide(
//                     color: widget.borderColor ?? theme.primaryColor,
//                     width: widget.borderWidth,
//                   ),
//           ),
//           errorStyle: TextStyle(
//             color: Colors.red,
//           ),
//         ),
//         validator: widget.validator == null
//             ? (value) {
//                 RegExp regex = RegExp(BConstants.pattern);
//                 if (value!.isEmpty && widget.validate) {
//                   return widget.validateMsg;
//                 } else if (widget.validateEmail! && !regex.hasMatch(value)) {
//                   return "Please enter a valid email address";
//                 }
//                 return null;
//               }
//             : (value) => widget.validator!(value!),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.8,
      height: height * 0.06,
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black
            )
          )
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}
