import 'package:flutter/material.dart';

class FootballGroundDetailsTextStyle extends StatefulWidget {
  FootballGroundDetailsTextStyle({required this.name, required this.description});

  final String name;
  final String description;

  @override
  State<FootballGroundDetailsTextStyle> createState() => _FootballGroundDetailsTextStyleState();
}

class _FootballGroundDetailsTextStyleState extends State<FootballGroundDetailsTextStyle> {
  late int _likeCounter;

  @override
  void initState() {
    super.initState();

    _likeCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Football Ground Details")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  widget.name,
                  style: TextStyle(
                    backgroundColor: Color.fromRGBO(50, 168, 82, 1),
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    wordSpacing: 3,
                    overflow: TextOverflow.fade,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Text(
            widget.description,
            style: TextStyle(backgroundColor: Color(0x32a852)),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _likeCounter++;
              });
            },
            icon: const Icon(Icons.thumb_up),
          ),
          Text(_likeCounter.toString()),
          ElevatedButton(
            child: Text("Back"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
