import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:project1/game_Select.dart';
import 'package:project1/main.dart';
// import 'package:project1/rush_Start.dart';
import 'package:project1/rush_Control.dart';
import 'package:project1/result_Table.dart';
import 'package:project1/widgets/resultWidget.dart';

class Result extends StatefulWidget {
  int a = 0;
  Result({super.key, a});

  @override
  Result_State createState() => Result_State();
}

class Result_State extends State<Result> {
  @override
  Widget build(BuildContext context) {
    // print("count_limit$count_limit");
    // print(result_Map);
    var score_Percent = ((score_Count / count_limit) * 100).round();

    var left_w = Expanded(
        flex: 1,
        child: Container(
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Flexible(
                  flex: 1,
                  child: Container(
                      width: double.infinity,
                      height: 220,
                      alignment: Alignment.center,
                      color: Color(mode_Color[mode]),
                      child: Text(
                          "${mode_kanji[mode]}ＲＵＳＨ${count_limit.toString()}問",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          )))),
              Flexible(
                  flex: 3,
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(flex: 1, child: Container()),
                      resultButton(flexPoint: 1, text: "正解率"),
                      resultButton(
                          flexPoint: 1, text: "$score_Count問／$count_limit問"),
                      resultButton(flexPoint: 1, text: "$score_Percent%"),
                      resultButton(flexPoint: 1, text: "お疲れさまでした。"),
                      Flexible(flex: 1, child: Container()),
                    ],
                  )))
            ])));
//"正解率\n\n$score_Count問／$count_limit問\n\n$score_Percent%\n\n\nお疲れさまでした。\n\n\n"
    var toTitleButton = ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        },
        child: Text(
          'タイトルに戻る ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
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
    return Material(child: All_w);
  }
}
