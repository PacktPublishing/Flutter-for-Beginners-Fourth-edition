import 'package:flutter/material.dart';
import 'package:hello_world/chapter05/football_ground_button_widget.dart';
import 'package:hello_world/chapter07/football_ground_list_widget_example.dart';
import 'package:hello_world/chapter07/slivers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            IconButton(
              onPressed: () => _scaffoldKey.currentState!.closeDrawer(),
              icon: Icon(Icons.close),
            ),
            TextButton(
              child: Text("Whitby"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("Saltburn"),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FootballGroundButtonWidget(footballGroundName: "Whitby"),
            ElevatedButton(
              style: ButtonStyle(
                alignment: Alignment.bottomCenter,
                backgroundColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.green;
                }),
              ),
              onPressed: () => {},
              child: Text('Example'),
            ),
            ElevatedButton(
              onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              child: Text("Select football ground"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('The parmo is a famous food from Teesside.'),
                  ),
                );
              },
              child: Text('Show SnackBar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FootballGroundListWidget(),
                  ),
                );
              },
              child: Text('List example'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SliversExample(),
                  ),
                );
              },
              child: Text('Slivers example'),
            ),
          ],
        ),
      ),
    );
  }
}
