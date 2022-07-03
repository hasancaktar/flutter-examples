import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  final String _title = "Welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        actionsIconTheme: IconThemeData(color: Colors.red, size: 24),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.send_and_archive)),
          Text(_title)
        ],
      ),
    );
  }
}
