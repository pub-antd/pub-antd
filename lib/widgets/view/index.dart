import 'package:flutter/material.dart';

class AntdView extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final BoxDecoration? style;
  const AntdView({super.key, this.child, this.style, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(decoration: style, child: child),
    );
  }
}
