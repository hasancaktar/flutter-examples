import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  ColorDemos({Key? key, this.initialColor}) : super(key: key);
   Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color _backgroundColor = Colors.transparent;

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    print(widget.initialColor != _backgroundColor && widget.initialColor != null);
    print(oldWidget.initialColor!=_backgroundColor);

    if(widget.initialColor != _backgroundColor && widget.initialColor != null)
      {
          _changeBackgroundColor(widget.initialColor!);
      }
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _backgroundColor=widget.initialColor??Colors.transparent;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _colorOnTap,
          items: [
             BottomNavigationBarItem(
                icon: _colorContainer(color: Colors.red), label: "Red"),
            BottomNavigationBarItem(
                icon: _colorContainer(color: Colors.yellow), label: "Yellow"),
            BottomNavigationBarItem(
                icon: _colorContainer(color: Colors.green), label: "green")
          ]),
    );
  }
//metodun dönüş tipi ve parametresi belli olmalı int string gibi
  void _colorOnTap(int val) {
          print(val);
          if (val == MyColor.red.index) {
            _changeBackgroundColor(Colors.red);
          } else if (val == MyColor.yellow.index) {
            _changeBackgroundColor(Colors.yellow);
          } else if (val == MyColor.green.index) {
            _changeBackgroundColor(Colors.green);
          }
        }
}

enum MyColor { red, yellow, green }

class _colorContainer extends StatelessWidget {
  const _colorContainer({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
