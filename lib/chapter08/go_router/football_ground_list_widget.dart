import 'package:flutter/material.dart';
import 'package:hello_world/chapter08/go_router/football_ground_button_widget.dart';

class FootballGroundListWidget extends StatelessWidget {
  const FootballGroundListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football Grounds'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.location_on),
            title: FootballGroundButtonWidget(
              footballGroundName: 'Middlesbrough FC',
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Everton FC'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Forest Green Rovers FC'),
          ),
        ],
      ),
    );
  }
}
