import 'package:flutter/material.dart';
import 'package:hello_world/chapter05/football_ground_details_widget.dart';

class FootballGroundButtonWidget extends StatelessWidget {
  const FootballGroundButtonWidget({required this.footballGroundName, super.key});
  final String footballGroundName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(footballGroundName),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FootballGroundDetailsWidget(
              footballGroundName: footballGroundName,
            ),
          ),
        );
      },
    );
  }
}
