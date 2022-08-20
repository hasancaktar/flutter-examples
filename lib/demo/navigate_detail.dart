import 'package:flutter/material.dart';

class NavigateDetailView extends StatefulWidget {
  const NavigateDetailView({Key? key, this.isOk = false}) : super(key: key);
  final bool isOk;

  @override
  State<NavigateDetailView> createState() => _NavigateDetailViewState();
}

class _NavigateDetailViewState extends State<NavigateDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop(!widget.isOk);
              },
              icon: Icon(widget.isOk ? Icons.add : Icons.clear),
              label:
                  widget.isOk ? const Text("Onayla") : const Text("Reddet"))),
    );
  }
}
