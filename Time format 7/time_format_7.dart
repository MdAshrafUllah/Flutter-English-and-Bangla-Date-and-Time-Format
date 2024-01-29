String convertToBanglaNumeral(int number) {
  const Map<String, String> banglaNumerals = {
    '0': '০',
    '1': '১',
    '2': '২',
    '3': '৩',
    '4': '৪',
    '5': '৫',
    '6': '৬',
    '7': '৭',
    '8': '৮',
    '9': '৯',
  };

  return number.toString().split('').map((digit) {
    return banglaNumerals[digit] ?? digit;
  }).join('');
}

String currentTimeFormat() {
  DateTime now = DateTime.now();
  int hour = now.hour;
  String period = 'পূর্বাহ্ন';

  if (hour > 12) {
    hour = hour - 12;
    period = 'অপরাহ্ন';
  } else if (hour == 0) {
    hour = 12;
  }

  String banglaHour = convertToBanglaNumeral(hour).padLeft(2, '০');
  String banglaMinute = convertToBanglaNumeral(now.minute).padLeft(2, '০');

  return '$banglaHour:$banglaMinute $period';
}
