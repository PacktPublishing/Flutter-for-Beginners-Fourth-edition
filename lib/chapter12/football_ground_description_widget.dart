import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FootballGroundDescriptionWidget extends StatelessWidget {
  const FootballGroundDescriptionWidget({required this.description, super.key});
  final String description;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      description,
      style: TextStyle(color: Colors.red),
    );
  }
}
