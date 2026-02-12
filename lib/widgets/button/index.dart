import 'package:flutter/material.dart';
import 'package:pub_antd/widgets/button/helper.dart';
import 'package:pub_antd/widgets/token.dart';

class AntdButton extends StatefulWidget {
  final Color? color;
  final AntdButtonSize? size;
  final AntdButtonType? type;
  final VoidCallback? onTap;
  final Widget? child;
  final String? text;
  final TextStyle? textStyle;
  const AntdButton({
    super.key,
    this.color,
    this.size,
    this.type,
    this.onTap,
    this.child,
    this.text,
    this.textStyle,
  });
  @override
  State<AntdButton> createState() => _AntdButtonState();
}

class _AntdButtonState extends State<AntdButton> {
  Color _color = AntdToken.defaultColor;
  TextStyle _textStyle = TextStyle(color: AntdToken.textColor);

  @override
  void initState() {
    super.initState();
    _handleType();
  }

  @override
  void dispose() {
    super.dispose();
  }

  EdgeInsets _getSize() {
    switch (widget.size) {
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
    switch (widget.size) {
      case AntdButtonSize.small:
        return AntdToken.buttonHeightSmall;
      case AntdButtonSize.large:
        return AntdToken.buttonHeightLarge;
      default:
        return AntdToken.buttonHeightMedium;
    }
  }

  void _handleType() {
    if (widget.type == AntdButtonType.primary) {
      _color = widget.color ?? AntdToken.primaryColor;
      _textStyle = _textStyle.copyWith(color: Colors.white);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: _getHeight(),
        padding: _getSize(),
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AntdToken.borderColor),
        ),
        child: Center(
          child: DefaultTextStyle(
            style: _textStyle.merge(widget.textStyle),
            child: widget.child ?? Text(widget.text ?? ''),
          ),
        ),
      ),
    );
  }
}
