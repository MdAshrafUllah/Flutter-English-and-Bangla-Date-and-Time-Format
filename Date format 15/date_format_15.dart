String formatCurrentDate() {
  DateTime now = DateTime.now();

  String dayOfWeek = getDayOfWeek(now.weekday);
  String month = getMonthAbbreviation(now.month);

  return '$dayOfWeek, $month ${now.day}, ${now.year}';
}

String getDayOfWeek(int day) {
  const List<String> daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  return daysOfWeek[day - 1];
}

String getMonthAbbreviation(int month) {
  const List<String> monthAbbreviations = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  return monthAbbreviations[month - 1];
}
