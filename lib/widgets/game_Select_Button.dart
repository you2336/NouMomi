import 'package:flutter/material.dart';
import 'package:project1/rush_Control.dart';
import 'package:project1/rush_Start.dart';

class GameSelectButton extends StatefulWidget {
  //final String text; //ボタンに表示するテキスト
  final String buttonMode; //変数modeに設定と背景色をつかさどる文字列
  final Color color;
  final VoidCallback onPressed;
  final double borderRadius;
  // final double padding;

  GameSelectButton({
    Key? key,
    //required this.text,
    required this.buttonMode,
    this.color = Colors.blue,
    // this.color = mode_Color[buttonMode],
    required this.onPressed,
    this.borderRadius = 8.0,
    // this.padding = 16.0,
  }) : super(key: key);

  @override
  _GameSelectButtonState createState() => _GameSelectButtonState();
}

class _GameSelectButtonState extends State<GameSelectButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        init(widget.buttonMode);
        debugPrint('${widget.borderRadius}');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Rush_Start()),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(1000, 130),
        backgroundColor: Color(mode_Color[widget.buttonMode]),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        //padding: EdgeInsets.all(widget.padding),
      ),
      child: Text(
        '${mode_kanji[widget.buttonMode]}ＲＵＳＨ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
        ), // color: Color(mode_Color[widget.buttonMode]),
      ),
    );
  }
}
