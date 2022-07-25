import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/Colorss.dart';
import 'package:sample/IconView.dart';
import 'package:sample/ListTile.dart';
import 'package:sample/appbar.dart';
import 'package:sample/button.dart';
import 'package:sample/card.dart';
import 'package:sample/column_row_widget.dart';
import 'package:sample/container_sized_box.dart';
import 'package:sample/custom_widget.dart';
import 'package:sample/demo/stack_demo_card.dart';
import 'package:sample/image.dart';
import 'package:sample/indicator.dart';
import 'package:sample/padding.dart';
import 'package:sample/page_view.dart';
import 'package:sample/sample_screen.dart';
import 'package:sample/scaffold.dart';
import 'package:sample/stack.dart';
import 'package:sample/statafull.dart';
import 'package:sample/statefull_life_cycle.dart';
import 'package:sample/stateless.dart';
import 'package:sample/text_field.dart';
import 'package:sample/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black)),
          inputDecorationTheme: InputDecorationTheme(

              filled: true,
              iconColor: Colors.red,
              border: OutlineInputBorder(),
              fillColor: Colors.blue[200],
              floatingLabelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
              ),labelStyle:TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ) ),
          listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: Colors.white),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          errorColor: ColorsItems.akaroa,
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: TextFieldView(),
    );
  }
}
