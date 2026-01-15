import 'package:flutter/material.dart';
import 'package:hello_world/Chapter08/football_ground_button_widget.dart';

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
          InkWell(
            onTap: () {
              // optional: navigate or handle tap
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                children: [
                  const Icon(Icons.location_on),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FootballGroundButtonWidget(
                      footballGroundName: 'Middlesbrough FC',
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      alignment: Alignment.bottomCenter,
                      backgroundColor: WidgetStatePropertyAll(Colors.green),
                      // backgroundColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
                      //   if (states.contains(WidgetState.pressed)) {
                      //     return Colors.red;
                      //   }
                      //   return Colors.green;
                      // }),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: const [
                Icon(Icons.location_on),
                SizedBox(width: 12),
                Expanded(child: Text('Everton FC')),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: const [
                Icon(Icons.location_on),
                SizedBox(width: 12),
                Expanded(child: Text('Forest Green Rovers FC')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
