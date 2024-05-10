import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon({super.key, this.size, required this.icon, this.color});
  final Color? color;
  final double? size;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size ?? 24,
      width: size ?? 24,
      color: color,
    );
  }
}