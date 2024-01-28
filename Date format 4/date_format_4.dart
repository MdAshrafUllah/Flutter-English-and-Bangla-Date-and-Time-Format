String formatCurrentDate() {
  DateTime now = DateTime.now();
  return '${now.day.toString().padLeft(2, '0')} ${monthToString(now.month)} ${now.year}';
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
