import 'package:flutter/material.dart';
import 'package:hello_world/chapter06/verification_code_form_field.dart';
import 'package:hello_world/chapter06/verification_code_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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
  late TextEditingController _verificationCodeController;

  @override
  void initState() {
    super.initState();
    _verificationCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            VerificationCodeInput(borderSide: BorderSide(), onChanged: (_) {}, controller: _verificationCodeController),
            TextButton(
              onPressed: () {},
              child: Text("Validate"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _verificationCodeController.dispose();
    super.dispose();
  }
}
