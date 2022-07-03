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
import 'package:sample/image.dart';
import 'package:sample/indicator.dart';
import 'package:sample/padding.dart';
import 'package:sample/sample_screen.dart';
import 'package:sample/scaffold.dart';
import 'package:sample/stateless.dart';
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
      home: ColumnView(),
    );
  }
}
