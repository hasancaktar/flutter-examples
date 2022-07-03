import 'package:flutter/material.dart';
import 'package:sample/core/random_image.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  onTap: () {},
                  title:
                     RandomImage(),
                  subtitle: Text("description card"),
                  leading: Container(
                      color: Colors.blue,
                      height: 200,
                      width: 20,
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.money)),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
