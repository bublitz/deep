// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/theme_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

//void main() {
//  runApp(MyApp());
//}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final PendingDynamicLinkData? initialLink =
      await FirebaseDynamicLinks.instance.getInitialLink();

  String team;

  if (initialLink != null) {
    final Uri deepLink = initialLink.link;
    //team = deepLink.path;
    switch (deepLink.path) {
      case '/app':
        {
          team = 'Android';
          break;
        }
      case '/team1':
        {
          team = 'Corona';
          break;
        }
      default:
        {
          team = 'Dark';
        }
    }
    Fluttertoast.showToast(
        msg: deepLink.path,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  } else {
    team = 'Android';
  }

  runApp(MyApp(team: team));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.team});

  final String team;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(team),
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
                })
          ],
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                style: TextStyle(fontSize: 14),
              ),
            ),
          );
        }),
      );
    });
  }
}
