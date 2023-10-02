import 'package:flutter/material.dart';
import 'package:flutter_learning/style.dart';
import 'Lists.dart';


main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.teal, brightness: Brightness.light),
      darkTheme: ThemeData(
          primaryColor: Colors.deepPurple, brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
             mycontainer(ShoeList,context),
              mycontainer(ShirtList,context),
              mycontainer(CapList,context)

            ],

          ),
        ));
  }
}


class Item {
  final url;
  final name;
  final price;

  Item({required this.url, required this.name, required this.price});
}
