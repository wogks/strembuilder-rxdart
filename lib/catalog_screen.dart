import 'package:counter_app/item.dart';
import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  final List<Item> _itemList = itemList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('catalog'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.archive))
        ],
      ),
      body: ListView(
        children: _itemList.map((item) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(item.tilte),
            ),
          );
        }).toList(),
      ),
    );
  }
}
