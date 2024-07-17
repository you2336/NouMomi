import 'package:flutter/material.dart';
import 'package:project1/rush_Start.dart';
import 'package:project1/rush_Control.dart';
import 'package:project1/widgets/game_Select_Button.dart';

class Game_Select extends StatefulWidget {
  Game_Select({super.key});

  // dynamic test_fanction() {
  //   debugPrint('777');
  // }

  Game_SelectState createState() => Game_SelectState();
}

class Game_SelectState extends State<Game_Select> {
  @override
  Widget build(BuildContext context) {
    double fontSize = 10;

    final button_back = ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('戻る',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
            textAlign: TextAlign.center),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(400, 90), shape: RoundedRectangleBorder()));
    void f() {}
    ;

    final container = Container(
        child: Column(children: [
      Flexible(
        flex: 1,
        child: SizedBox(
          height: 70,
        ),
      ),
      Flexible(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: GameSelectButton(buttonMode: "kanji", onPressed: f),
        ),
      ),
      Flexible(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: GameSelectButton(buttonMode: "keisan", onPressed: f),
        ),
      ),
      Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: GameSelectButton(buttonMode: "rika", onPressed: f),
          )),
      Flexible(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: GameSelectButton(buttonMode: "shakai", onPressed: f),
        ),
      ),
      SizedBox(
        height: 50,
      ),
      Flexible(
        flex: 1,
        child: button_back,
      ),
    ]));

    return Material(child: container);
  }
}
