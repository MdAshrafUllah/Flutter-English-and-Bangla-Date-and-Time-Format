String formatCurrentDate() {
  DateTime now = DateTime.now();
  return '${now.day.toString().padLeft(2, '0')} ${monthToString(now.month)} ${now.year}';
}

String monthToString(int month) {
  const List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  return months[month - 1];
}
