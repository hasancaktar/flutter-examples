import 'package:flutter/material.dart';

class ScaffoldView extends StatelessWidget {
  const ScaffoldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold View")),
      body: Text("Merhaba"),
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context)=>Container(height: 200,));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "AA"),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "bb")
      ]),
      drawer: const Drawer(),
      bottomSheet: BottomSheet(onClosing: (){},builder: (context){
       return const Text("Hasan");
      },),
    );
  }
}
