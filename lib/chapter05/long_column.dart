import 'package:flutter/material.dart';
import 'package:hello_world/chapter05/football_ground_button_widget.dart';

class LongColumn extends StatelessWidget {
  const LongColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long Column Example'),
      ),
      body: Column(
        children: [
          for (int i = 0; i < 30; i++)
            Padding(
              padding: const EdgeInsets.all(16),
              child: FootballGroundButtonWidget(footballGroundName: 'Staithes'),
            ),
        ],
      ),
    );
  }
}
