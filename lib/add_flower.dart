import 'package:flutter/material.dart';
import 'package:flutter_stateles_project/model/item.dart';

class AddFlower extends StatefulWidget {
  const AddFlower({Key? key}) : super(key: key);

  @override
  _AddFlowerState createState() => _AddFlowerState();
}

class _AddFlowerState extends State<AddFlower> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          flowerNotify.addFlower(Flower(color: "Red", type: "daisy"));
        },
        child: Text("sad"),
      ),
    );
  }
}
