import 'package:flutter/material.dart';
import 'package:sample/demo/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: _changeBackground, icon: Icon(Icons.clear))]),
      body: Column(children: [Spacer(), Expanded(child: ColorDemos(initialColor: backgroundColor,))]),
    );
  }

  void _changeBackground(){
      setState(() {
        backgroundColor=Colors.pink;
      });
    }
}
