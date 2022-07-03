import 'package:flutter/material.dart';

class StatelessView extends StatelessWidget {
  const StatelessView({Key? key}) : super(key: key);
  final String text1="Hasan";
  final String text2="Sancaktar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children:  [
        TextTitleWidget(
          text: text1,
        ),
        TextTitleWidget(
          text: text2,
        )
      ]),
    );
  }
}

class TextTitleWidget extends StatelessWidget {
  const TextTitleWidget({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
