import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "Very Interesting...";
    if (resultScore <= 20) {
      resultText = "bro do it bro";
    } else if (resultScore <= 35) {
      resultText = "bro, what kind of drug are you smoking?";
    } else if (resultScore <= 55) {
      resultText = "Maybe seretly you are from York?";
    } else if (resultScore <= 70) {
      resultText =
          "Broooo........";
    } else if (resultScore == 100) {
      resultText = "Comp Sci is life";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              "Restart Quiz",
            ),
            textColor: Colors.blue,
            onPressed: this.resetHandler,
          )
        ],
      ),
    );
  }
}
