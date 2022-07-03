import 'package:flutter/material.dart';

class ImageVieww extends StatelessWidget {
  const ImageVieww({Key? key}) : super(key: key);
  final String networkImage ="https://i.pinimg.com/736x/e1/59/a6/e159a668869e27a25734cb04dcec6ed9.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 300,
              width: 200,
              child: PngImages(
                path: ImageItems().computerPath,
              )),
          Image.network(
            networkImage,
            errorBuilder: (context, error, stackTrace) =>
                PngImages(path: ImageItems().computerPath),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String computer = "assets/computer.png";
  final String computerPath = "computer";
}

class PngImages extends StatelessWidget {
  const PngImages({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath(),
      fit: BoxFit.fill,
    );
  }

  String _nameWithPath() => "assets/$path.png";
}
