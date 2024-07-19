import 'package:flutter/material.dart';

Widget resultButton({required int flexPoint, required String text}) {
  return Flexible(
    flex: flexPoint,
    child: Text(
      "${text}",
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
