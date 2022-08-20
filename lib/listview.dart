import 'package:flutter/material.dart';

class ListViewView extends StatefulWidget {
  const ListViewView({Key? key}) : super(key: key);

  @override
  State<ListViewView> createState() => _ListViewViewState();
}

class _ListViewViewState extends State<ListViewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        FittedBox(child: Text("Hasan"),),
        Container(height: 200,color: Colors.green,),
        Container(height: 200,color: Colors.yellow,),
        SizedBox(height: 300,
          child: ListView(scrollDirection: Axis.horizontal,
              children: [
            Container(width: 200,color: Colors.red,),
            Container(width: 200,color: Colors.white,),
            Container(width: 200,color: Colors.red,),
            Container(width: 200,color: Colors.white,),
            Container(width: 200,color: Colors.red,)
          ]),
        ),
        Container(height: 200,color: Colors.purple,),
        Demo()
      ]),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);


  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("çizildi");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Silindi");
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
