import 'package:flutter/material.dart';

class FootballGroundDetailsWidget extends StatelessWidget {
  const FootballGroundDetailsWidget({required this.footballGroundName, super.key});
  final String footballGroundName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(footballGroundName),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/exampleGround.jpg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.sports_soccer,
                    size: 50,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Favourite'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
