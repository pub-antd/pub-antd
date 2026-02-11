# pub_antd

基于 Flutter 的 **Ant Design 风格** 组件库，提供一致的设计语言与开箱即用的业务组件，适合中后台与桌面端应用。

## 特性

- **设计一致**：遵循 Ant Design 的设计规范，视觉与交互风格统一
- **开箱即用**：常用组件封装完善，减少重复造轮子
- **易于扩展**：结构清晰，便于按业务需求二次封装

## 安装

在 `pubspec.yaml` 中添加依赖：

```yaml
dependencies:
  pub_antd:
    git:
      url: https://github.com/你的用户名/pub_antd.git
      ref: main
```

或使用 path 依赖进行本地开发：

```yaml
dependencies:
  pub_antd:
    path: ../pub_antd
```

然后执行：

```bash
flutter pub get
```

## 快速开始

```dart
import 'package:pub_antd/pub_antd.dart';

// 使用基础容器
AntdView(
  child: Text('内容'),
)

// 使用按钮
AntdButton()
```

## 组件列表

| 组件 | 说明 |
|------|------|
| AntdView | 基础容器组件 |
| AntdButton | 按钮组件 |

（后续会持续补充 Table、Form、Input、Modal 等 Ant Design 常见组件）

## 本地演示

在仓库中运行 example 应用即可预览所有组件：

```bash
cd example
flutter run
```

或从项目根目录：

```bash
flutter run -C example
```

## 环境要求

- Dart ^3.10.3
- Flutter >= 1.17.0

## 许可

见 [LICENSE](LICENSE) 文件。
