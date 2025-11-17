import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hello_world/chapter09/football_ground_details_widget.dart';
import 'package:hello_world/chapter09/football_ground_list_widget.dart';
import 'package:hello_world/chapter09/football_ground_ratings.dart';
import 'package:provider/provider.dart';

void main() {
  GetIt.instance.registerSingleton<FootballGroundRatingsProvider>(FootballGroundRatingsProvider());

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _selectedFootballGround;

  void _setFootballGround(String destinationfootballGroundName) {
    this.setState(() {
      _selectedFootballGround = destinationfootballGroundName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FootballGroundRatingsProvider>(
      create: (context) => GetIt.instance.get<FootballGroundRatingsProvider>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: Navigator(
          pages: [
            MaterialPage(
              child: FootballGroundListWidget(
                footballGroundCallback: _setFootballGround,
              ),
            ),
            if (_selectedFootballGround != null)
              MaterialPage(
                child: FootballGroundDetailsWidget(footballGroundName: _selectedFootballGround!),
              ),
          ],
        ),
      ),
    );
  }
}
