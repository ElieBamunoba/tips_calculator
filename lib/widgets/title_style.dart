import 'package:flutter/material.dart';

//the title style widget
Widget titleStyle({
  required String title,
}) {
  return Text(
    title,
    style: const TextStyle(color: Colors.blue),
  );
}
