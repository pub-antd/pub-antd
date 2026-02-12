class AntdButtonProps {
  final String? text;
  final Function()? onPressed;
  const AntdButtonProps({this.text, this.onPressed});
}

enum AntdButtonType { primary, normal, ghost, link, text }

enum AntdButtonSize { small, medium, large }
