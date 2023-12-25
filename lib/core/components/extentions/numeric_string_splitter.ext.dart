extension NumericStringSplitter on String {
  String getNumericPart() {
    RegExp numRegExp = RegExp(r'^\d+\.?\d*');
    return numRegExp.stringMatch(this) ?? '';
  }

  String getStringPart() {
    RegExp numRegExp = RegExp(r'^\d+\.?\d*');
    return replaceFirst(numRegExp, '').trim();
  }
}