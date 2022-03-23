import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    return resultScore > 10 ? "Tu as fini le quiz si bien" : "Un peu faiblard";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(resultPhrase),
        TextButton(
          child: Text("Recommencer"),
          onPressed: resetHandler,
        )
      ]),
    );
  }
}
