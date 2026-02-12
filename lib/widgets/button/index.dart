import 'package:flutter/material.dart';

class AntdButtonProps {
  final String? text;
  final Function()? onPressed;
  const AntdButtonProps({this.text, this.onPressed});
}

enum AntdButtonType { primary, secondary, ghost, link, text }

enum AntdButtonSize { small, medium, large }

enum AntdButtonColor {
  // default
  normal,
  // primary
  primary,
  // danger
  danger,
  // pink
  pink,
  // purple
  purple,
  // gray
  gray,
  // yellow
  yellow,
  // orange
  orange,
  // cyan
  cyan,
  // green
  green,
  // blue
  blue,
  // black
  black,
  // white
  white,
}

class AntdButton extends StatelessWidget {
  // color
  final Color? color;

  // size
  final AntdButtonSize? size;

  // type
  final AntdButtonType? type;

  // onTap
  final VoidCallback? onTap;

  // child
  final Widget? child;

  // text
  final String? text;
  // textStyle
  final TextStyle? textStyle;

  const AntdButton({
    super.key,
    this.text,
    this.color,
    this.size,
    this.type,
    this.onTap,
    this.child,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child:
            child ??
            Text(
              text ?? '',
              style: textStyle ?? TextStyle(color: Colors.white),
            ),
      ),
    );
  }
}
