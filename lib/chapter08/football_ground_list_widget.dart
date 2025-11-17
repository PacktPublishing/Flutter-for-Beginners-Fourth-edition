import 'package:flutter/material.dart';
import 'package:hello_world/Chapter08/football_ground_button_widget.dart';

class FootballGroundListWidget extends StatelessWidget {
  const FootballGroundListWidget({super.key, required this.footballGroundCallback});
  final void Function(String) footballGroundCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football Grounds'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            child: Text('Riverside stadium'),
            onPressed: () {
              footballGroundCallback("Riverside stadium");
            },
          ),
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
