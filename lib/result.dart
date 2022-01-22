import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartQuiz;
  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = "You need to watch Marvel Movies";
    } else if (resultScore > 5 && resultScore <= 7) {
      resultText = "You are a Fan of Marvel Movies";
    } else if (resultScore > 7 && resultScore <= 9) {
      resultText = "You are a Big Fan of Marvel Movies";
    } else {
      resultText = "Congrats! You are an Avenger Now";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 50,height: 50,)
            ],
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              SizedBox(width: 50,height: 20,)
            ],
          ),
          Text(
            'Score: $resultScore',
            style : TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              SizedBox(width: 50,height: 50,),
            ],
          ),
          Center(
              child: ElevatedButton(
                child: Text(
                  'Restart Quiz',
                  style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(120)
                  )
                ),
                onPressed: restartQuiz,

              )

          )
        ],
      ),
    );
  }
}


