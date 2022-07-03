import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          margin: MyMargins.cardMargin,
          child: SizedBox(
            child: Center(child: Text("CAN")),
            height: 100,
            width: 500,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        Card(
          color: Theme.of(context).colorScheme.error,
          child: SizedBox(
            height: 100,
            width: 100,
          ),
        ),
        CustomCard(
            child: SizedBox(
          child: Center(child: Text("CAN")),
          height: 100,
          width: 500,
        ))
      ]),
    );
  }
}

class MyMargins {
  static const cardMargin = EdgeInsets.all(10);
  static  final  roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

}

class CustomCard extends StatelessWidget {
   CustomCard({super.key, required this.child});

  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Card(
      color: Theme.of(context).colorScheme.error,
      child: child,
   // shepe yi materialapp da mainde tanımladık
   //   shape: roundedRectangleBorder,
    );
  }
}

///borders
///stadiımBorder, circleBorder, RoundedRectangleBorder
