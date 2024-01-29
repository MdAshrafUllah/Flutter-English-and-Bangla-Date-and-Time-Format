String currentTimeFormat() {
  DateTime now = DateTime.now();
  int hour = now.hour;

  if (hour > 12) {
    hour = hour - 12;
  } else if (hour == 0) {
    hour = 12;
  }

  return '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
}
