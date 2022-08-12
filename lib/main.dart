// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/theme_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
          builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          title: 'POC Deep Link',
          theme: themeNotifier.theme,
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        );
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(themeNotifier.team),
          actions: [
            IconButton(
                icon: Icon(themeNotifier.icon),
                onPressed: () {
                  themeNotifier.nextTeam();
                  print("Theme change clicked");
                })
          ],
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          );
        }),
      );
    });
  }
}
