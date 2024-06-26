import 'package:flutter/material.dart';
import 'package:project1/result.dart';
import 'package:project1/rush_Control.dart';

ListView createScoreTable() {
  var score_Table = ListView.builder(
    itemCount: count_limit,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: EdgeInsets.all(2.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  height: 80,
                  color: Colors.blue.withOpacity(0.2),
                  child: Row(
                    children: [
                      Text('問${index + 1}'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  height: 80,
                  color: Colors.blue.withOpacity(0.2),
                  child: Row(
                    children: [
                      Text('${result_Map[index]}'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  height: 80,
                  color: Colors.blue.withOpacity(0.2),
                  child: const Row(
                    children: [
                      Text('空白'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
  return score_Table;
}
