import 'package:flutter/material.dart';
import 'package:flutter_stateles_project/model/custom_theme_data.dart';
import 'package:flutter_stateles_project/model/item.dart';
import 'package:provider/provider.dart';

import 'provider/flower_non_view.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => DarkFlowersModel(),
          ),
          ChangeNotifierProvider(
            create: (context) => CustomThemeDataModal(),
          )
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: Provider.of<CustomThemeDataModal>(context).getThemeData,
      home: FlowerNonView(),
    );
  }
}
