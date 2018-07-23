import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerButton extends StatelessWidget {
  final bool _answer;
  final VoidCallback _onTop;

  AnswerButton(this._answer, this._onTop);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material(
        color: _answer == true ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          onTap: () => _onTop(),
          child: new Center(
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.white, width: 2.0)),
              child: new Text(
                _answer == true ? "True" : "False",
                style: new TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
