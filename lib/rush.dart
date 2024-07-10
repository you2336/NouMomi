import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/game_Select.dart';
import 'package:project1/result.dart';
import 'package:project1/rush_Start.dart';
//import 'package:project1/questions/juk_question.dart';
import 'package:project1/rush_Control.dart';

// rush_Controlから問題のmapを受け取り、
// 表示し、回答を受け取り、rushControlに返す

var list = [];
// var map = jukugo_question;
var count = 1;
var answer = 0;

class Rush extends StatefulWidget {
  int a = 0;
  Rush({super.key, a});

  @override
  Rush_State createState() => Rush_State();
}

class Rush_State extends State<Rush> {
  dynamic test_fanction() {
    debugPrint('777');
  }

  rush_Control() {
    setState(() {
      print("$count_now");
      print("${question_Map[question_Order[count_now]]?["answer"]}");
      print("${question_Map[question_Order[count_now]]}");
      print("$answer,${question_Map[question_Order[count_now]]?["answer"]}");
      if (answer == question_Map[question_Order[count_now]]?["answer"]) {
        result_Map[count_now] = "〇";
        print("〇");
        score_Count = score_Count + 1;
      } else {
        result_Map[count_now] = "☓";
        print("☓");
      }

      if (count_now < count_limit - 1) {
        print("");
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Result()),
        );
      }
      count_now += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(map);
    // print(map[count]);
    // print(map[count]?["question"].runtimeType);
    // print((map[count]?["choices"]?[1].runtimeType));

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
                color: Color(mode_Color[mode]),
                child: Text("第${count_now + 1}問")),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 600,
                child:
                    Text(question_Map[question_Order[count_now]]?["question"])),
          ],
        )));

    final choices1 = ElevatedButton(
        onPressed: () {
          answer = 1;
          rush_Control();
        },
        child: Text(question_Map[question_Order[count_now]]?["choices"]?[1]),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 110), shape: RoundedRectangleBorder()));
    final choices2 = ElevatedButton(
        onPressed: () {
          answer = 2;
          rush_Control();
        },
        child: Text(question_Map[question_Order[count_now]]?["choices"]?[2]),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 110), shape: RoundedRectangleBorder()));
    final choices3 = ElevatedButton(
        onPressed: () {
          answer = 3;
          rush_Control();
        },
        child: Text(question_Map[question_Order[count_now]]?["choices"]?[3]),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 110), shape: RoundedRectangleBorder()));
    final choices4 = ElevatedButton(
        onPressed: () {
          answer = 4;
          rush_Control();
        },
        child: Text(question_Map[question_Order[count_now]]?["choices"]?[4]),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 110), shape: RoundedRectangleBorder()));

    var right_w = Expanded(
      flex: 1,
      child: Container(
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Padding(
            padding: EdgeInsets.all(100),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  choices1,
                  choices2,
                  choices3,
                  choices4,
                ]),
          )),
    );

    var All_w = Container(child: Row(children: [left_w, right_w]));

    return All_w;
  }
}
