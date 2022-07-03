import 'package:flutter/material.dart';

class PaddingView extends StatelessWidget {
  const PaddingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("abc")),
      body: Padding(
        padding: MyPadding.pagePaddingVetical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Container(
                color: Colors.green,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.red,
                height: 100,
              ),
            ),
            Padding(
              padding: MyPadding.pagePaddingRightOnly + MyPadding.pagePaddingVetical,
              child: Text("Hasan"),
            )

          ],
        ),
      ),
    );
  }
}
class MyPadding{

static const  pagePaddingVetical = const EdgeInsets.symmetric(vertical: 10);
static const  pagePaddingRightOnly = const EdgeInsets.only(right: 20);

}