import 'package:flutter/material.dart';
import 'package:sample/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final double cardHeight = 50;
  final double cardWidth = 250;
  final double cardBottom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: RandomImage(),
                    bottom: cardHeight / 2,
                  ),
                  Positioned(
                      height: cardHeight,
                      width: cardWidth,
                      bottom: cardBottom,
                      child: customCard())
                ],
              )),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }

  Card customCard() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
