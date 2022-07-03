import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "A",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) return Colors.green;
            return Colors.white;
          })),
        ),
        ElevatedButton(onPressed: null, child: Text("A")),
        IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        OutlinedButton(
          onPressed: () {},
          child: SizedBox(child: Text("A"), width: 200),
          style: OutlinedButton.styleFrom(backgroundColor: Colors.purple),
        ),
        OutlinedButton.icon(
            onPressed: () {}, icon: Icon(Icons.abc), label: Text("Hasan")),
        InkWell(
          child: Text("Text"),
          onTap: () {},
        ),
        Container(
          height: 200,
          color: Colors.white,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 20, left: 40, right: 40, top: 20),
            child: Text(
              "Academy ",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
        )
      ]),
    );
  }
}
