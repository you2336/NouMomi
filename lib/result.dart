import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/game_Select.dart';
import 'package:project1/main.dart';
import 'package:project1/rush_Start.dart';
import 'package:project1/rush_Control.dart';
import 'package:project1/result_Table.dart';

class Result extends StatefulWidget {
  int a = 0;
  Result({super.key, a});

  @override
  Result_State createState() => Result_State();
}

class Result_State extends State<Result> {
  dynamic test_fanction() {
    debugPrint('777');
  }

  @override
  Widget build(BuildContext context) {
    print("count_limit$count_limit");
    print(result_Map);
    var score_Percent = ((score_Count / count_limit) * 100).round();

    var left_w = Expanded(
        flex: 1,
        child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
                  width: double.infinity,
                  height: 200,
                  alignment: Alignment.center,
                  color: Color(0xFFf4b183),
                  child: Text(
                      "${mode_kanji[mode]}ＲＵＳＨ${count_limit.toString()}問")),
              Container(
                  child: Column(
                children: [
                  Text("正解率"),
                  Text("$score_Count問／$count_limit問"),
                  Text("$score_Percent%"),
                  Text(" "),
                  Text("お疲れさまでした。"),
                ],
              ))
            ])));

    var toTitleButton = ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        },
        child: Text('スタート'),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 100), shape: RoundedRectangleBorder()));

    var right_w = Expanded(
        flex: 1,
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                Expanded(flex: 9, child: createScoreTable()),
                Expanded(flex: 1, child: toTitleButton)
              ],
            )));

    var All_w = Container(child: Row(children: [left_w, right_w]));
    return All_w;
  }
}