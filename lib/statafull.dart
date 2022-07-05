import 'package:flutter/material.dart';
import 'package:sample/product/counter_merhaba_button.dart';
import 'package:sample/product/language/language_items.dart';

class StatefullWidget extends StatefulWidget {
  const StatefullWidget({Key? key}) : super(key: key);

  @override
  State<StatefullWidget> createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {
  int _counter = 0;

  void _updateCounter(bool isIncrament) {
    if (isIncrament) {
      _counter = _counter + 1;
    } else {
      _counter = _counter - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcome),),
      floatingActionButton: Row(mainAxisSize: MainAxisSize.min, children: [
        incrementButton(),
        deicrementButton(),
      ]),
      body: Column(
        children: [
          Center(
              child: Text(
            "$_counter",
            style: Theme.of(context).textTheme.headline3,
          )),
          const Placeholder(),
          const MerhabaButton()
        ],
      ),
    );
  }

  FloatingActionButton incrementButton() => FloatingActionButton(
      child: Icon(Icons.add), onPressed: () => _updateCounter(true));

  Padding deicrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FloatingActionButton(
          child: Icon(Icons.remove), onPressed: () => _updateCounter(false)),
    );
  }
}
