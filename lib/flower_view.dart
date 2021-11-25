import 'package:flutter/material.dart';
import 'package:flutter_stateles_project/add_flower.dart';
import 'package:flutter_stateles_project/model/item.dart';

class FlowerView extends StatefulWidget {
  const FlowerView({Key? key}) : super(key: key);

  @override
  State<FlowerView> createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  var model = FlowersModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddFlower()));
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: flowerNotify,
        child: Text("Hello"),
        builder: (context, FlowersModel model, child) {
          return ListView.builder(
            itemCount: model.list!.length,
            itemBuilder: (context, index) => Column(
              children: [
                Center(
                  child: Card(
                    child: Text(model.list![index].color!),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
