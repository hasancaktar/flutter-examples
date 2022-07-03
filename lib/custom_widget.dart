import 'package:flutter/material.dart';
import 'package:sample/text_learn_view.dart';

class CustomWidgetView extends StatelessWidget {
  CustomWidgetView({Key? key}) : super(key: key);
  final String buttonData = "Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  //  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: CustomElevatedButton(
                    onPressed: () {},
                    buttonData: buttonData,
                  )),
            )),
            SizedBox(
              height: 200,
            ),
            CustomElevatedButton(
              buttonData: buttonData, onPressed: () {  },
            ),
          ],
        ));
  }
}

class MyColors {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(8);
  final EdgeInsets normal2xPadding = EdgeInsets.all(16);
}

class CustomElevatedButton extends StatelessWidget
    with MyColors, PaddingUtility {
  CustomElevatedButton(
      {Key? key, required this.buttonData, required this.onPressed})
      : super(key: key);
  final String buttonData;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: redColor, shape: StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          buttonData,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
