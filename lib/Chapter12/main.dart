import 'package:flutter/material.dart';
import 'package:hello_world/Chapter12/animated_builder.dart';
import 'package:hello_world/Chapter12/rotated_bounce_in_button.dart';
import 'package:hello_world/Chapter12/rotation_button.dart';
import 'package:hello_world/Chapter12/composed_button.dart';
import 'package:hello_world/Chapter12/rotated_button.dart';
import 'package:hello_world/Chapter12/scaled_button.dart';
import 'package:hello_world/Chapter12/translated_button.dart';
import 'package:hello_world/Chapter12/move_button.dart';
import 'package:hello_world/Chapter12/scale_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Button background color
            foregroundColor: Colors.white, // Text color
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Animations'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: <Widget>[
            ElevatedButton(
              child: Text('Rotated button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return RotatedButton();
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Scaled button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ScaledButton();
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Translated button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TranslatedButton();
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Composed button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ComposedButton();
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animated rotation button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(appBar: AppBar(), body: RotationAnimations());
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animated scale button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(appBar: AppBar(), body: ScaleAnimations());
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animated moving button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(appBar: AppBar(), body: MoveAnimations());
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animated bounce-in button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(appBar: AppBar(), body: RotationBounceInAnimations());
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animation builder'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(appBar: AppBar(), body: RotationBuilderAnimations());
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
