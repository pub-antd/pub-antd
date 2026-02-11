import 'package:flutter/material.dart';

class AntdView extends StatelessWidget {
  final Widget? child;
  const AntdView({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }
}
