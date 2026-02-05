import 'package:flutter/material.dart';
import 'package:hello_world/chapter07/football_ground_button_widget.dart';
import 'package:hello_world/chapter07/football_ground_details_container.dart';
import 'package:hello_world/chapter07/football_ground_details_text_style.dart';
import 'package:hello_world/chapter07/football_ground_details_underline.dart';
import 'package:hello_world/chapter07/football_ground_list_tile_example.dart';
import 'package:hello_world/chapter07/football_ground_list_widget_example.dart';
import 'package:hello_world/chapter07/slivers_flexible_header.dart';
import 'package:hello_world/chapter07/slivers_list_long.dart';
import 'package:hello_world/chapter07/slivers_list_short.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FootballGroundDetailsTextStyle(
                      name: "Whitby",
                      description: "A town in the North East of England etched into history by Dracula",
                    ),
                  ),
                ),
                child: Text('Whitby'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FootballGroundDetailsUnderlined(
                      name: "Saltburn",
                      description: "Saltburn-by-the-Sea, normally referred to as Saltburn, is the North East's premier surfing destination.",
                    ),
                  ),
                ),
                child: Text('Saltburn underlined'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FootballGroundDetailsContainer(
                      name: "Saltburn",
                      description: "Saltburn-by-the-Sea, normally referred to as Saltburn, is the North East's premier surfing destination.",
                    ),
                  ),
                ),
                child: Text('Saltburn stadium border'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FootballGroundListTileExample(),
                  ),
                ),
                child: Text('List tile'),
              ),
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
              FootballGroundButtonWidget(footballGroundName: "Middlesbrough"),
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
                      builder: (context) => SliversListShort(),
                    ),
                  );
                },
                child: Text('Slivers short list'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SliversListLong(),
                    ),
                  );
                },
                child: Text('Slivers long list'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SliversFlexibleHeader(),
                    ),
                  );
                },
                child: Text('Slivers flexible header example'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
