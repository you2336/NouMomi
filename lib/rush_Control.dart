import 'package:project1/rush.dart';
import 'package:project1/questions/kanji_question.dart';
import 'package:project1/questions/keisan_question.dart';
import 'package:project1/questions/rika_question.dart';
import 'package:project1/questions/shakai_question.dart';
import 'dart:math' as math;

String mode = "kanji"; //どのゲームか
Map mode_Color = {
  "kanji": 0xFFF4B183, // 244,177,131
  "keisan": 0xFF8FAADC, // 143,170,220
  "rika": 0xFFA9D18E, // 169,209,142
  "shakai": 0xFFFFD966, // 255,217,102
};
Map mode_kanji = {
  "kanji": "漢字脳力",
  "keisan": "計算脳力",
  "rika": "理科脳力",
  "shakai": "社会脳力",
};
int count_now = 0; //今の回答数
int count_limit = 10; //最大回答数
List<int> question_Order = [];
Map question_Map = {};
//quesion_Order.shuffle();
void map_Init() {
  if (mode == "kanji") {
    question_Map = kanji_question;
  }
  if (mode == "keisan") {
    question_Map = keisan_question;
  }
  if (mode == "rika") {
    question_Map = rika_question;
  }
  if (mode == "shakai") {
    question_Map = shakai_question;
  }

  print("map_Init");
  question_Order = [for (var i = 1; i <= question_Map.length; i++) i];
  question_Order.shuffle();
  question_Order = question_Order.sublist(0, count_limit);
  print(question_Order);
}

int score_Count = 0;
Map result_Map = {}; //スコア

void init(String modeSub) {
  print('init');
  mode = modeSub;
  count_now = 0;
  count_limit = 10;
  question_Map = {};
  score_Count = 0;
  result_Map = {};
  question_Order = [];
}
