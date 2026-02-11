import 'package:flutter/material.dart';

class FootballGroundDetailsWidget extends StatefulWidget {
  const FootballGroundDetailsWidget({required this.footballGroundName, super.key});

  final String footballGroundName;

  @override
  State<FootballGroundDetailsWidget> createState() => _FootballGroundDetailsWidgetState();
}

class _FootballGroundDetailsWidgetState extends State<FootballGroundDetailsWidget> {
  late int _visitCounter;
  final _ratingController = TextEditingController.fromValue(
    TextEditingValue(text: "0"),
  );
  String _rating = "0";

  @override
  void initState() {
    super.initState();
    // Could be initialised from a database call
    _visitCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.footballGroundName,
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
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.red,
                width: 3,
              ),
            ),
          ),
          child: Text(
            widget.footballGroundName,
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.green,
                width: 6,
              ),
            ),
          ),
          child: Text(
            widget.footballGroundName,
          ),
        ),
        Image.asset('assets/images/exampleGround.jpg'),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _visitCounter++;
                });
              },
              icon: const Icon(Icons.sports_soccer),
            ),
            Text(_visitCounter.toString()),
          ],
        ),
        TextField(
          controller: _ratingController,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _rating = _ratingController.text;
            });
          },
          child: const Text('Submit Rating'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _ratingController.dispose();
    super.dispose();
  }
}
