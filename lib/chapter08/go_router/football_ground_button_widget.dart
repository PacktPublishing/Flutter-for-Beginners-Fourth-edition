import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FootballGroundButtonWidget extends StatelessWidget {
  const FootballGroundButtonWidget({required this.footballGroundName, super.key});
  final String footballGroundName;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(footballGroundName),
      onPressed: () {
        context.go('/footballground/$footballGroundName');
      },
    );
  }
}
