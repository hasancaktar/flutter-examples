import 'package:flutter/material.dart';
import 'package:sample/appbar.dart';

class IconView extends StatelessWidget {
   IconView({Key? key}) : super(key: key);

   //initialize etmek
  final MyIcons iconSizes = MyIcons();
  final MyIconColors myIconColors = MyIconColors();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ABC")),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: myIconColors.froly,
              size: iconSizes.iconSmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).colorScheme.error,
              size: iconSizes.iconSmall,
            ),
          )

        ],
      ),
    );
  }
}
class MyIcons{
  final double iconSmall=35;

}
class MyIconColors{
  final Color froly =Color(0xFFED617A);

}