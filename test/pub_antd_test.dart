import 'package:flutter_test/flutter_test.dart';

import 'package:pub_antd/pub_antd.dart';

void main() {
  test('adds one to input values', () {
    final button = AntdButton();
    expect(button, isA<AntdButton>());
  });
}
