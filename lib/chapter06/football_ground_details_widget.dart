import 'package:flutter/material.dart';

class FootballGroundDetailsWidget extends StatefulWidget {
  const FootballGroundDetailsWidget({required this.footballGroundName, super.key});

  final String footballGroundName;

  @override
  State<FootballGroundDetailsWidget> createState() => _FootballGroundDetailsWidgetState();
}

class _FootballGroundDetailsWidgetState extends State<FootballGroundDetailsWidget> {
  late int _visitCounter;
  String _rating = "0";
  late TextEditingController _ratingController;

  @override
  void initState() {
    super.initState();

    _ratingController = TextEditingController.fromValue(
      TextEditingValue(text: "0"),
    );

    // Could be initialised from a database call
    _visitCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.footballGroundName),
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
      ),
    );
  }

  @override
  void dispose() {
    _ratingController.dispose();
    super.dispose();
  }
}
