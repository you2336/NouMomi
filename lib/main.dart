// import 'dart:ui_web';
import 'package:flutter/material.dart';
import 'package:project1/game_Select.dart';
// import 'package:project1/rush_Control.dart';
// import 'package:project1/widgets/AnswerDialog.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'KleeOne',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //final audioPlayer = AudioPlayer();
  void test_function() {
    print('記録閲覧ボタンが押されました');
  }

  @override
  Widget build(BuildContext context) {
    final button_Start = ElevatedButton(
      onPressed: () {
        // audioPlayer.play((AssetSource("sounds/...")));

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Game_Select()),
        );
      },
      child: Text('スタート',
          textScaleFactor: 3.0,
          style: TextStyle(
            color: Color.fromARGB(255, 70, 70, 70),
          )),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 249, 216, 173),
        minimumSize: Size(700, 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
    final button_Record = ElevatedButton(
      onPressed: () {
        // showDialog(
        //   context: context,
        //   builder: (_) => AnswerDialog(),
        // );
      },
      child: Text('記録閲覧',
          textScaleFactor: 3.0,
          style: TextStyle(
            color: Color.fromARGB(255, 70, 70, 70),
          )),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 206, 244, 255),
        minimumSize: Size(700, 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

    final sub_Column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        button_Start,
        SizedBox(
          height: 50,
        ),
        //button_Record,
      ],
    );

    final main_Column = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            //color: Color.fromARGB(255, 255, 255, 255),
              //margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child:
              SizedBox()),
              Expanded(
                flex: 3,
                child:
              Container(
                //color: Colors.black54,
                child:
                Text(
                'の う も み',
                style: TextStyle(fontSize: 150),
                textAlign: TextAlign.center,
              ))),
              Expanded(
                flex: 2,
                child:
              Container(
                //color: Colors.amberAccent,
                child:
              Text(
                '~ 脳力アップちゃれんじ ~\n',
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.center,
              ),
              )
              )
            ],
          )),
        ),

        //SizedBox(height: 50),
        Expanded(flex: 2, child: sub_Column),
      ],
    );

    final main_Container = main_Column;

    return Scaffold(
      body: Center(child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
        return Container(
            //width: constrains.maxWidth,
            //height: constrains.maxHeight,
            child: main_Container);
      })),
    );
  }
}
