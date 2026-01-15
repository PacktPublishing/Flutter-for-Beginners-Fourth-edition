import 'package:flutter/material.dart';

class SelectionTypes extends StatefulWidget {
  const SelectionTypes({super.key});

  @override
  State<SelectionTypes> createState() => _SelectionTypesState();
}

class _SelectionTypesState extends State<SelectionTypes> {
  bool checkboxValue = false;
  int radioValue = 0;
  bool switchValue = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Types'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              value: checkboxValue,
              onChanged: (newValue) {
                setState(() {
                  checkboxValue = newValue ?? false;
                });
              },
            ),
            RadioGroup<int>(
              onChanged: (newValue) {
                setState(() {
                  radioValue = newValue ?? 1;
                });
              },
              groupValue: radioValue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Radio(
                    value: 1,
                  ),
                  Radio(
                    value: 2,
                  ),
                ],
              ),
            ),
            Switch(
              value: switchValue,
              onChanged: (newValue) {
                setState(() {
                  switchValue = newValue;
                });
              },
            ),
            Slider(
              value: sliderValue,
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
