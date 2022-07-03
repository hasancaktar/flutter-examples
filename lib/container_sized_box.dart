import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Text("a" * 500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 50),
          ),
          Container(
            //    width: 50,
            height: 50,

            constraints: const BoxConstraints(maxWidth: 100, minWidth: 50),
          ///  decoration: MyDecoration(),
            decoration: MyUtility.boxDecoration,
            child: Text("aaasdasd" * 2),
          ),
        ],
      ),
    );
  }
}

class MyDecoration extends BoxDecoration {
  MyDecoration() : super(borderRadius: BorderRadius.circular(20),
      gradient:
      const LinearGradient(colors: [Colors.blue, Colors.pink]),
      boxShadow: const [
        BoxShadow(
            color: Colors.green,
            offset: Offset(0.1, 1),
            blurRadius: 12),
      ],
      border: Border.all(width: 100, color: Colors.grey));
}

class MyUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient:
      const LinearGradient(colors: [Colors.blue, Colors.pink]),
      boxShadow: const [
        BoxShadow(
            color: Colors.green,
            offset: Offset(0.1, 1),
            blurRadius: 12),
      ],
      border: Border.all(width: 100, color: Colors.grey));
}