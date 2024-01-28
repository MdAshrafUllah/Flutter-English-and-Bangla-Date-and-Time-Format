String formatCurrentDate() {
  DateTime now = DateTime.now();

  String banglaDay = getBanglaDayName(now.weekday);
  String banglaDate = convertToBangla(now.day);
  String banglaMonth = getBanglaMonthName(now.month);
  String banglaYear = convertToBangla(now.year);

  return '$banglaDay, $banglaDate $banglaMonth $banglaYear';
}

String getBanglaDayName(int day) {
  const List<String> banglaDayNames = [
    'শনিবার',
    'রবিবার',
    'সোমবার',
    'মঙ্গলবার',
    'বুধবার',
    'বৃহস্পতিবার',
    'শুক্রবার',
  ];
  return banglaDayNames[day - 6];
}

String getBanglaMonthName(int month) {
  const List<String> banglaMonthNames = [
    'জানুয়ারি',
    'ফেব্রুয়ারি',
    'মার্চ',
    'এপ্রিল',
    'মে',
    'জুন',
    'জুলাই',
    'আগস্ট',
    'সেপ্টেম্বর',
    'অক্টোবর',
    'নভেম্বর',
    'ডিসেম্বর',
  ];
  return banglaMonthNames[month - 1];
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
    '৯',
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
