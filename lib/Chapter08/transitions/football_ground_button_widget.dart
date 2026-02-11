import 'package:flutter/material.dart';
import 'package:hello_world/Chapter08/football_ground_details_widget.dart';

class FootballGroundButtonWidget extends StatelessWidget {
  const FootballGroundButtonWidget({required this.footballGroundName, super.key});
  final String footballGroundName;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(footballGroundName),
      onPressed: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => FootballGroundDetailsWidget(footballGroundName: footballGroundName),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return child;
            },
          ),
        );
      },
    );
  }
}
