import 'package:flutter/material.dart';
import 'package:project1/game_Select.dart';
import 'package:project1/rush_Control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void test_function() {
    print('記録閲覧ボタンが押されました');
  }

  @override
  Widget build(BuildContext context) {
    final button_Start = ElevatedButton(
      onPressed: () {
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
        Text(
          'クイズ　のうもみ',
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
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
