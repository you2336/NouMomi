import 'package:flutter/material.dart';
import 'package:project1/rush_Start.dart';
import 'package:project1/rush_Control.dart';

class Game_Select extends StatefulWidget {
  Game_Select({super.key});

  dynamic test_fanction() {
    debugPrint('777');
  }

  Game_SelectState createState() => Game_SelectState();
}

class Game_SelectState extends State<Game_Select> {
  @override
  Widget build(BuildContext context) {
    final button_jukugo = ElevatedButton(
        onPressed: () {
          mode = "jukugo";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Rush_Start()),
          );
        },
        child: Text('熟語読みＲＵＳＨ'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(mode_Color["jukugo"]),
            minimumSize: Size(700, 150),
            shape: RoundedRectangleBorder()));
    final button_anzan = ElevatedButton(
        onPressed: () {
          mode = "anzan";
          setState(() {});
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Rush_Start()),
          );
        },
        child: Text('連続暗算ＲＵＳＨ'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(mode_Color["anzan"]),
            minimumSize: Size(700, 150),
            shape: RoundedRectangleBorder()));
    final button_kagaku = ElevatedButton(
        onPressed: () {
          mode = "kagaku";
          setState(() {});
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Rush_Start()),
          );
        },
        child: Text('科学知識ＲＵＳＨ'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(mode_Color["kagaku"]),
            minimumSize: Size(700, 150),
            shape: RoundedRectangleBorder()));
    final button_shakai = ElevatedButton(
        onPressed: () {
          mode = "shakai";
          setState(() {});
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Rush_Start()),
          );
        },
        child: Text('社会知識ＲＵＳＨ'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(mode_Color["shakai"]),
            minimumSize: Size(700, 150),
            shape: RoundedRectangleBorder()));
    final button_back = ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('戻る'),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(400, 90), shape: RoundedRectangleBorder()));

    final container = Container(
        child: Column(children: [
      button_jukugo,
      button_anzan,
      button_kagaku,
      button_shakai,
      button_back,
    ]));

    return container;
  }
}
