import 'package:flutter/widgets.dart';

extension SizedBoxExtension on int {
  Widget get h => SizedBox(height: toDouble());
  Widget get w => SizedBox(width: toDouble());
}
