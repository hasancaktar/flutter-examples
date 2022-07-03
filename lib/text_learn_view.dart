import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
   TextLearnView({Key? key}) : super(key: key);
  final String? name = "hasan";
  final MyKeys keys = MyKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "isin $name",
            style: TextStil.stil,
          ),
          Text(
            "soy isim $name",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: MyColors.isimColor),
          ),
          Text(
            keys.keyBir,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: MyColors.isimColor),
          )
        ],
      )),
    );
  }
}

class TextStil {
  static TextStyle stil = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      letterSpacing: 2,
      color: Colors.amber,
      fontSize: 13);
}

class MyColors {
  static Color isimColor = Colors.red;
}

class MyKeys {
  final String keyBir = "sancak";
}
