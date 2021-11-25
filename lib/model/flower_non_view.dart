import 'package:flutter/material.dart';
import 'package:flutter_stateles_project/model/item.dart';
import 'package:provider/provider.dart';

import '../add_flower.dart';

class FlowerNonView extends StatelessWidget {
  const FlowerNonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[],
        leading: Text(
          "hello",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        title: Consumer<DarkFlowersModel>(
          child: Icon(Icons.access_alarm),
          builder: (context, model, child) {
            return TextButton.icon(  
              icon: Icon(Icons.list),
              label: Text("data"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddFlower()));
              },
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Text(""),
      ),
    );
  }
}
