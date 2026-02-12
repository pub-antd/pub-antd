import 'package:flutter/material.dart';
import 'package:pub_antd/pub_antd.dart';
import 'package:pub_antd/widgets/button/helper.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pub_antd 组件演示',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatelessWidget {
  const DemoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pub_antd 组件库演示'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _Section(
            title: 'AntdView',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('基础容器组件：'),
                const SizedBox(height: 8),
                AntdView(
                  style: const BoxDecoration(color: Colors.red),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      '这里是 AntdView 包裹的内容',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _Section(
            title: 'AntdButton',
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('按钮组件（继承自 AntdView）：'),
                const SizedBox(height: 8),
                Text('按钮大小：'),
                Row(
                  spacing: 12,
                  children: [
                    AntdButton(text: 'Large', size: AntdButtonSize.large),
                    AntdButton(text: 'Default', size: AntdButtonSize.medium),
                    AntdButton(text: 'Small', size: AntdButtonSize.small),
                  ],
                ),
                Text("按钮类型："),
                Row(
                  spacing: 12,
                  children: [
                    AntdButton(text: 'Primary', type: AntdButtonType.primary),
                    AntdButton(text: 'Secondary', type: AntdButtonType.normal),
                    AntdButton(text: 'Ghost', type: AntdButtonType.ghost),
                    AntdButton(text: 'Link', type: AntdButtonType.link),
                    AntdButton(text: 'Text', type: AntdButtonType.text),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
