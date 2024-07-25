import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:project1/game_Select.dart';
import 'package:project1/result.dart';
// import 'package:project1/rush_Start.dart';
import 'package:project1/widgets/AnswerDialog.dart';
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
  dynamic test_fanction() {}

  rush_Control() async {
    await showDialog(
      context: context,
      builder: (_) => AnswerDialog(
          title: "第${count_now + 1}問",
          question: question_Map[question_Order[count_now]]?["question"],
          selectAnswer_num: answer,
          selectAnswer: question_Map[question_Order[count_now]]?["choices"]
              ?[answer],
          truthAnswer: question_Map[question_Order[count_now]]?["answer"],
          answerSent: question_Map[question_Order[count_now]]?["choices"]
              ?[question_Map[question_Order[count_now]]?["answer"]]),
    );
    setState(() {
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
    var left_w = Expanded(
        flex: 1,
        child: Container(
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                  width: double.infinity,
                  // height: 200,
                  alignment: Alignment.center,
                  color: Color(mode_Color[mode]),
                  child: Text(
                    "第${count_now + 1}問",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 80,
                    ),
                  )),
            ),
            Expanded(
              flex: 7,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.all(50),
                  //color: Color(mode_Color[mode]),
                  //height: 600,
                  child: Text(
                    question_Map[question_Order[count_now]]?["question"],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  )),
            ),
          ],
        )));

    final choices1 = ElevatedButton(
        onPressed: () {
          answer = 1;
          rush_Control();
        },
        child: Text(
          question_Map[question_Order[count_now]]?["choices"]?[1],
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 110), shape: RoundedRectangleBorder()));
    final choices2 = ElevatedButton(
        onPressed: () {
          answer = 2;
          rush_Control();
        },
        child: Text(
          question_Map[question_Order[count_now]]?["choices"]?[2],
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 110), shape: RoundedRectangleBorder()));
    final choices3 = ElevatedButton(
        onPressed: () {
          answer = 3;
          rush_Control();
        },
        child: Text(
          question_Map[question_Order[count_now]]?["choices"]?[3],
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(700, 110), shape: RoundedRectangleBorder()));
    final choices4 = ElevatedButton(
        onPressed: () {
          answer = 4;
          rush_Control();
        },
        child: Text(
          question_Map[question_Order[count_now]]?["choices"]?[4],
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
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
                  Flexible(child: choices1),
                  Flexible(child: choices2),
                  Flexible(child: choices3),
                  Flexible(child: choices4),
                ]),
          )),
    );

    var All_w = Container(child: Row(children: [left_w, right_w]));

    return Material(child: All_w);
  }
}
