import 'package:flutter/material.dart';

class MerhabaButton extends StatefulWidget {
  const MerhabaButton({Key? key}) : super(key: key);

  @override
  State<MerhabaButton> createState() => _MerhabaButtonState();
}

class _MerhabaButtonState extends State<MerhabaButton> {
  int _counterCustom = 0;
  final String _merhaba = "Merhaba";

  void _updateCunter() {
    setState(() {
      _counterCustom++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("burda");
    return ElevatedButton(
        onPressed: _updateCunter,
        child: Text("$_merhaba $_counterCustom"));
  }
}
