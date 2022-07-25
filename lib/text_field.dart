import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/product/language/language_items.dart';

class TextFieldView extends StatefulWidget {
  const TextFieldView({Key? key}) : super(key: key);

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  FocusNode focusNodeTextField1 = FocusNode();
  FocusNode focusNodeTextField2 = FocusNode();

  final key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              buildCounter: (
                BuildContext context, {
                int? currentLength,
                int? maxLength,
                bool? isFocused,
              }) {
                return _animatedContainer(currentLength);

                // return AnimatedContainer(
                //   key: UniqueKey(),
                //   duration: Duration(microseconds: 100),
                //   height: 10,
                //   width: 40,
                //   color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
                // );

                /*
                return Text(
                  '$currentLength of $maxLength characters',
                  semanticsLabel: 'Acharacter count',
                );

                 */
              },
              textInputAction: TextInputAction.next,
              autofocus: true,
              focusNode: focusNodeTextField1,
              keyboardType: TextInputType.emailAddress,
              autofillHints: [AutofillHints.email],
              inputFormatters: [TextProjectInputFormater().textFormatter],
              maxLength: 20,
              decoration: TextInputDearotor().emailInput),
          TextField(
            focusNode: focusNodeTextField2,
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormater {
  final textFormatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (oldValue.text == "a") {
      return newValue;
    }
    return newValue;
  });
}

class TextInputDearotor {
  final emailInput = InputDecoration(
      prefix: Icon(Icons.mail),
      border: OutlineInputBorder(),
      labelText: LanguageItems.mailTitle);
}
