import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'image.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);
  final _title = "Create your first note";
  final _desc = " Add a note ";
  final _createNote = "Create a note";
  final _impportNote = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItem.horizontal,
        child: Column(children: [
          PngImages(
            path: ImageItems().computerPath,
          ),
          _titleWidget(title: _title),
          Padding(
            padding: PaddingItem.vertical,
            child: _subtitleWidget(subtitle: _desc),
          ),
          Spacer(),
          _createButton(context),
          _importNotesButton(),
          SizedBox(
            height: ButtonHigh.buttonNormalHigh,
          )
        ]),
      ),
    );
  }

  TextButton _importNotesButton() => TextButton(onPressed: () {}, child: Text(_impportNote));

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            child: SizedBox(
                height: ButtonHigh.buttonNormalHigh,
                child: Center(
                    child: Text(
                  _createNote,
                  style: Theme.of(context).textTheme.headline5,
                ))));
  }
}

class _subtitleWidget extends StatelessWidget {
  const _subtitleWidget({
    Key? key,
    this.textAlign = TextAlign.center,
    required this.subtitle,
  }) : super(key: key);

  final TextAlign textAlign;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle * 10,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
    );
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItem {
  static const EdgeInsets horizontal = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets vertical = EdgeInsets.symmetric(vertical: 15);
}

class ButtonHigh {
  static const double buttonNormalHigh = 50;
}
