String formatCurrentDate() {
  DateTime now = DateTime.now();

  String banglaDay = convertToBangla(now.day);
  String banglaMonth = convertToBangla(now.month);
  String banglaYear = convertToBangla(now.year);

  return '$banglaDay - $banglaMonth - $banglaYear';
}

String convertToBangla(int number) {
  const List<String> banglaNumerals = [
    '০',
    '১',
    '২',
    '৩',
    '৪',
    '৫',
    '৬',
    '৭',
    '৮',
    '৯'
  ];

  String banglaNumber = '';

  if (number < 10) {
    banglaNumber = "০${banglaNumerals[number]}";
  } else {
    while (number > 0) {
      int digit = number % 10;
      banglaNumber = banglaNumerals[digit] + banglaNumber;
      number ~/= 10;
    }
  }

  return banglaNumber.isEmpty ? banglaNumerals[0] : banglaNumber;
}
