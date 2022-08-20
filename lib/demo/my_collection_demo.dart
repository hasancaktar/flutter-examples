import 'package:flutter/material.dart';

class MyCollection extends StatefulWidget {
  const MyCollection({Key? key}) : super(key: key);

  @override
  State<MyCollection> createState() => _MyCollectionState();
}

class _MyCollectionState extends State<MyCollection> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  _items=CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: _items.length,
            padding: PaddingUtility().paddingHorizontal,
            itemBuilder: (context, index) {
              return _categoryCard(model: _items[index]);
            }));
  }
}

class _categoryCard extends StatelessWidget {
  const _categoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(children: [
            Expanded(
                child: Image.asset(
              _model.imagePath,
              fit: BoxFit.fill,
            )),
            Padding(
              padding: PaddingUtility().paddingOnly,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text("${_model.price} eth ")],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel("Title1", ProjectImages.imageCollection, 3.5),
      CollectionModel("Title2", ProjectImages.imageCollection, 3.5),
      CollectionModel("Title3", ProjectImages.imageCollection, 3.5),
      CollectionModel("Title4", ProjectImages.imageCollection, 3.5)
    ];
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(this.title, this.imagePath, this.price);
}

class PaddingUtility {
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
  final paddingBottom = const EdgeInsets.only(bottom: 20.0);
  final paddingGeneral = const EdgeInsets.all(15.0);
  final paddingOnly = const EdgeInsets.only(top: 8.0);
}
class ProjectImages{
  static const imageCollection = "assets/random.jpg";
}