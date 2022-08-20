import 'package:flutter/material.dart';

class ListViewBuilderView extends StatefulWidget {
  const ListViewBuilderView({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderView> createState() => _ListViewBuilderViewState();
}

class _ListViewBuilderViewState extends State<ListViewBuilderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index){
        return Text("data");
      }),
    );
  }
}
