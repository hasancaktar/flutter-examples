import 'package:flutter/material.dart';
import 'package:sample/demo/navigate_detail.dart';
import 'package:sample/image.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> with NavigatorManager {
  List<int> selectedItem = [];

  void addSelected(int index,bool isAdd) {
    setState(() {
    isAdd?  selectedItem.add(index):selectedItem.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigation_rounded), onPressed: () async {}),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
            onPressed: () async {
              final response = await navigateWidgetNormal<bool>(
                  context,  NavigateDetailView(
                isOk: selectedItem.contains(index),
              ));
              if (response is bool) {
                addSelected(index,response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: selectedItem.contains(index) ? Colors.red : Colors.green,
              ),
            ));
      }),
    );
  }
}

mixin NavigatorManager {
  void navigateWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => widget,
        fullscreenDialog: true,
        settings: RouteSettings()));
  }

  Future<T?> navigateWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) => widget,
        fullscreenDialog: true,
        settings: RouteSettings()));
  }
}
