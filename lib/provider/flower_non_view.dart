import 'package:flutter/material.dart';
import 'package:flutter_stateles_project/shared/custom_theme.dart';
import 'package:provider/provider.dart';
import '../add_flower.dart';
import '../model/custom_theme_data.dart';

class FlowerNonView extends StatelessWidget {
  const FlowerNonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
      ),
      appBar: AppBar(
        actions: [],
        leading: Text(
          "hello",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<CustomThemeDataModal>(context, listen: false)
                    .setThemeData(ThemeData.dark());
              },
              child: Text("Dark"),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<CustomThemeDataModal>(context, listen: false)
                    .setThemeData(redTheme);
              },
              child: Text("Red"),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<CustomThemeDataModal>(context, listen: false)
                    .setThemeData(mikailThemeData);
              },
              child: Text("s"),
            ),
          ],
        ),
      ),
    );
  }
}
