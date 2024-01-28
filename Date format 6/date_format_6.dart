String formatCurrentDate() {
  DateTime now = DateTime.now();
  return '${monthToString(now.month)} ${now.day.toString().padLeft(2, '0')}, ${now.year}';
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
