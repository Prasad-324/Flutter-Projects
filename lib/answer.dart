import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selecthandler;
  final String answerText;
  Answer(this.selecthandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        color: Colors.blue,
        onPressed: selecthandler,
      ),
    );
  }
}
