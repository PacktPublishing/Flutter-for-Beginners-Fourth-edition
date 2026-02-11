import 'package:flutter/material.dart';

class FootballGroundListTileExample extends StatelessWidget {
  const FootballGroundListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Tile Example")),
      body: ListTile(
        title: Text("Teesside"),
        subtitle: Text("The home of the Lemon Top ice cream"),
        leading: Icon(Icons.location_on),
        onTap: () {},
        trailing: IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
      ),
    );
  }
}
