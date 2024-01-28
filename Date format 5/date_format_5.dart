String formatCurrentDate() {
  DateTime now = DateTime.now();
  return '${monthToString(now.month)} ${now.day.toString().padLeft(2, '0')}, ${now.year}';
}

String monthToString(int month) {
  const List<String> months = [
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
    'Dec',
  ];

  return months[month - 1];
}
