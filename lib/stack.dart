import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          color: Colors.red,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
            color: Colors.blue,
            height: 100,
          ),
        ),
        Positioned(
//            right: 0,
            bottom: 0,
      //      left: 0,
        //    top: 25,
            height: 100,
            width: 25,
            child: Container(
              color: Colors.green,
            )),
        Positioned.fill(
//            right: 0,
            bottom: 0,
            //      left: 0,
                top: 100,

            child: Container(
              color: Colors.purple,
            ))

      ]),
    );
  }
}
