import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnswerDialog extends StatefulWidget {
  final String title;
  final String question;
  String isCorrect = '不正解';
  final int selectAnswer_num;
  final String selectAnswer;
  final int truthAnswer;
  final String answerSent;

  AnswerDialog({
    Key? key,
    required this.title, // 第〇問
    required this.question, //
    required this.selectAnswer_num, // 選んだ回答
    required this.selectAnswer, // 選んだ回答文
    required this.truthAnswer, // 正しい回答
    required this.answerSent, // 問題文
  }) : super(key: key);

  @override
  _AnswerDialogState createState() => _AnswerDialogState();
}

class _AnswerDialogState extends State<AnswerDialog> {
  @override
  Widget build(BuildContext context) {
    if (widget.selectAnswer == widget.truthAnswer) {
      widget.isCorrect = '正　解';
    }
    return AlertDialog(
      title: Text(widget.title),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(""
                "＜問題＞\n" +
            "${widget.question}\n" +
            "\n" +
            "＜あなたの回答＞\n" +
            "${widget.selectAnswer_num}：${widget.selectAnswer}\n" +
            "\n" +
            "＜正しい　回答＞\n" +
            "${widget.truthAnswer}：${widget.answerSent}"),
      ]),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('閉じる'),
        )
      ],
    );
  }
}
