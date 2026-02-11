import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Types'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
            ),
            DropdownButton(
              items: [
                const DropdownMenuItem(
                  value: 1,
                  child: Text('Option 1'),
                ),
                const DropdownMenuItem(
                  value: 2,
                  child: Text('Option 2'),
                ),
              ],
              onChanged: (_) {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
