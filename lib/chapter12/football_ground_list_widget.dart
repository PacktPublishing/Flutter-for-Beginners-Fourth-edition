import 'package:flutter/material.dart';
import 'package:hello_world/chapter12/football_ground_button_widget.dart';
import 'package:hello_world/chapter12/football_ground_ratings.dart';
import 'package:provider/provider.dart';

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
          Consumer<FootballGroundRatingsProvider>(
            builder: (context, footballGroundRatingsProvider, child) {
              return Text('Total Ratings: ${footballGroundRatingsProvider.totalRatings}');
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: FootballGroundButtonWidget(
              footballGroundName: 'Riverside Stadium',
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: FootballGroundButtonWidget(
              footballGroundName: 'Stadium of Light',
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
