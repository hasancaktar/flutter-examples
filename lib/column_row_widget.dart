import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
              )),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 2,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("a"),
                  Text("b"),
                  Text("c"),
                ]),
          ),
          SizedBox(
            height: MyContainerSizes.cardHeight,
            child: Column(children: [
              Expanded(child: Text("data")),
              Expanded(child: Text("data")),
              Expanded(child: Text("data")),
              Expanded(child: Text("data")),
            ]),
          )
        ],
      ),
    );
  }
}

class MyContainerSizes {
  static const double cardHeight = 200;
}
