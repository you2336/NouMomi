import 'package:flutter/material.dart';
import 'package:project1/game_Select.dart';
import 'package:project1/rush.dart';
import 'package:project1/rush_Control.dart';

var list = [];
var button_List = [true, false, false];
Color onButtonColor = Color.fromARGB(102, 240, 240, 240);
Color offButtonColor = Color(0xFFF0F0F0);
Color bnt10 = onButtonColor;
Color bnt20 = offButtonColor;
Color bnt30 = offButtonColor;
button_push(int num) {
  count_limit = num;
  print("count_limit$count_limit");
  if (num == 10) {
    bnt10 = onButtonColor;
    bnt20 = offButtonColor;
    bnt30 = offButtonColor;
  }
  if (num == 20) {
    bnt10 = offButtonColor;
    bnt20 = onButtonColor;
    bnt30 = offButtonColor;
  }
  if (num == 30) {
    bnt10 = offButtonColor;
    bnt20 = offButtonColor;
    bnt30 = onButtonColor;
  } //花王
}

class Rush_Start extends StatefulWidget {
  @override
  Rush_Start({super.key});

  Rush_StartState createState() => Rush_StartState();
}

class Rush_StartState extends State<Rush_Start> {
  dynamic test_function() {
    debugPrint('777');
  }

  //RadioValue? selectedValue = RadioValue.apple;

  @override
  Widget build(BuildContext context) {
    print(mode);

    final hedder = Container(
      height: 220,
      alignment: Alignment.center,
      width: double.infinity,
      color: Color(mode_Color[mode]),
      child: Text(
        '${mode_kanji[mode]}ＲＵＳＨ',
        style: TextStyle(
          fontFamily: 'MPLUSRounded1c',
        ),
      ),
    );

    final difficultButton = Flexible(
      child: Padding(
          padding: EdgeInsets.all(50),
          child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      child: Text('１０問'),
                      onPressed: () {
                        setState(() {
                          button_push(10);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 150),
                          backgroundColor: bnt10,
                          shape: RoundedRectangleBorder())),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      child: Text('２０問'),
                      onPressed: () {
                        setState(() {
                          button_push(20);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 150),
                          backgroundColor: bnt20,
                          shape: RoundedRectangleBorder())),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      child: Text('３０問'),
                      onPressed: () {
                        setState(() {
                          button_push(30);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 150),
                          backgroundColor: bnt30,
                          shape: RoundedRectangleBorder())),
                ),
              ],
            ),
          )),
    );

    final button_start = Flexible(
        child: Padding(
            padding: EdgeInsets.all(30),
            child: ElevatedButton(
                onPressed: () {
                  map_Init();
                  var temp = Rush();
                  print("777");
                  print(question_Order);
                  print("$question_Order:$count_now");
                  print(question_Map[question_Order[count_now]]);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => temp));
                },
                child: Text('スタート'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(700, 100),
                  //shape: RoundedRectangleBorder()
                ))));
    final button_back = ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('戻る'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(700, 100),
          //shape: RoundedRectangleBorder()
        ));

    final container = Container(
        child: Column(children: [
      hedder,
      difficultButton,
      button_start,
      button_back,
    ]));

    return container;
  }
}
