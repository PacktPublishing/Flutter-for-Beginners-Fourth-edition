import 'package:flutter/material.dart';

class SliversFlexibleHeader extends StatelessWidget {
  const SliversFlexibleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            floating: true,
            title: Text("Sliver page"),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Flexible part'),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isEven ? Colors.red : Colors.black,
                );
              },
              childCount: 3,
            ),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text("Next"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
