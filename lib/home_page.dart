import "package:flutter/material.dart";
import 'package:flutter_app_tutorial/models/catalog.dart';
import 'package:flutter_app_tutorial/widgets/drawer.dart';
import 'package:flutter_app_tutorial/widgets/items_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.item[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Catalog App",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
