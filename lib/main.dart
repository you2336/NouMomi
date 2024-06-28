import 'package:flutter/material.dart';
import 'package:project1/game_Select.dart';
import 'package:project1/rush_Control.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'MPLUSRounded1c',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final audioPlayer = AudioPlayer();
  void test_function() {
    print('記録閲覧ボタンが押されました');
  }

  @override
  Widget build(BuildContext context) {
    final button_Start = ElevatedButton(
      onPressed: () {
        audioPlayer.play((AssetSource("sounds/ガロ保留音（赤）.mp3")));
        // audioPlayer.play((UrlSource("https://www.youtube.com/watch?v=oQ-YUfwX6ag")));
        init();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Game_Select()),
        );
      },
      child: Text('スタート'),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(700, 150),
        shape: RoundedRectangleBorder(),
      ),
    );

    final button_Record = ElevatedButton(
      onPressed: test_function,
      child: Text('記録閲覧'),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(700, 150),
        shape: RoundedRectangleBorder(),
      ),
    );

    final sub_Column = Column(
      children: [
        button_Start,
        button_Record,
      ],
    );

    final main_Column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Text(
              'の う も み',
              style: TextStyle(fontSize: 150),
              textAlign: TextAlign.center,
            )),
        Text(
          '~ 脳力アップちゃれんじ ~\n',
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 60),
        sub_Column,
      ],
    );

    final main_Container = Container(
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //   image: AssetImage('assets/images/a.png'),
      //   fit: BoxFit.fill,
      // )),
      child: main_Column,
      padding: EdgeInsets.all(16.0),
    );

    return Scaffold(
      body: Center(child: main_Container),
    );
  }
}
