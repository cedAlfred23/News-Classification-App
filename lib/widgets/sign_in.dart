import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_classification_app/config/icons.dart';
import 'package:news_classification_app/config/svg_icon.dart';

class SignInWith extends StatelessWidget {
  const SignInWith({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: textTheme.labelSmall!.color!,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SvgIcon(
            icon: BIcons.apple,
          ),
          const Gap(10),
          Text(
            "Apple",
            style: textTheme.displayMedium?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}