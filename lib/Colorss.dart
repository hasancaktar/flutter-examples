import 'package:flutter/material.dart';

class ColorView extends StatelessWidget {
  const ColorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: Text("abcd"),color: Theme.of(context).errorColor ,),
    );
  }
}

class ColorsItems{
static final Color porchase = Color(0xffEDBF61);

static final Color akaroa = Color.fromRGBO(219, 211, 174, 1);


}
