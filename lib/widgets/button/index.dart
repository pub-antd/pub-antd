import 'package:flutter/material.dart';
import 'package:pub_antd/widgets/token.dart';

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

  EdgeInsets _getSize() {
    switch (size) {
      case AntdButtonSize.small:
        return const EdgeInsets.symmetric(
          horizontal: AntdToken.buttonPaddingHorizontalSmall,
        );
      case AntdButtonSize.large:
        return const EdgeInsets.symmetric(
          horizontal: AntdToken.buttonPaddingHorizontalLarge,
        );
      default:
        return const EdgeInsets.symmetric(
          horizontal: AntdToken.buttonPaddingHorizontal,
        );
    }
  }

  double _getHeight() {
    switch (size) {
      case AntdButtonSize.small:
        return AntdToken.buttonHeightSmall;
      case AntdButtonSize.large:
        return AntdToken.buttonHeightLarge;
      default:
        return AntdToken.buttonHeightMedium;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _getHeight(),
        padding: _getSize(),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AntdToken.borderColor),
        ),
        child: Center(
          child:
              child ??
              Text(
                text ?? '',
                style:
                    textStyle ??
                    TextStyle(
                      color: color != null ? Colors.white : Colors.black,
                    ),
              ),
        ),
      ),
    );
  }
}
