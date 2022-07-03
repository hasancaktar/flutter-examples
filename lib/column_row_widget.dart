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
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.teal,
              )),
        ],
      ),
    );
  }
}
