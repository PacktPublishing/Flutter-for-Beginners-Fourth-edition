import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hello_world/chapter13/football_ground_description_widget.dart';
import 'package:hello_world/chapter13/football_ground_ratings.dart';
import 'package:provider/provider.dart';

class FootballGroundDetailsWidget extends StatefulWidget {
  const FootballGroundDetailsWidget({required this.footballGroundName, super.key});

  final String footballGroundName;

  @override
  State<FootballGroundDetailsWidget> createState() => _FootballGroundDetailsWidgetState();
}

class _FootballGroundDetailsWidgetState extends State<FootballGroundDetailsWidget> {
  late int _visitCounter;
  final _ratingController = TextEditingController.fromValue(
    TextEditingValue(text: "0"),
  );

  @override
  void initState() {
    super.initState();

    _visitCounter = 0;

    final currentRating = GetIt.instance.get<FootballGroundRatingsProvider>().getRating(widget.footballGroundName);
    _ratingController.text = currentRating == null ? '0' : currentRating.toString();
  }

  @override
  Widget build(BuildContext context) {
    final ratingsProvider = Provider.of<FootballGroundRatingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.footballGroundName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(widget.footballGroundName),
            Image.asset('assets/images/exampleGround.jpg'),
            FootballGroundDescriptionWidget(description: "The Riverside stadium is the home of Middlesbrough FC. It has a capacity of 34,000 and was opened in 1995."),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _visitCounter++;
                    });
                  },
                  icon: const Icon(Icons.sports_soccer),
                ),
                Text(_visitCounter.toString()),
              ],
            ),
            TextField(
              controller: _ratingController,
            ),
            TextButton(
              onPressed: () {
                final newRating = int.tryParse(_ratingController.text);
                if (newRating != null) {
                  ratingsProvider.submitRating(widget.footballGroundName, newRating);
                }
              },
              child: const Text('Submit Rating'),
            ),
            Consumer<FootballGroundRatingsProvider>(
              builder: (context, footballGroundRatingsProvider, child) => Text(
                'Total Ratings: ${footballGroundRatingsProvider.totalRatings}',
              ),
            ),
            Consumer<FootballGroundRatingsProvider>(
              builder: (context, footballGroundRatingsProvider, child) => AnimatedScale(
                duration: Duration(seconds: 3),
                curve: Curves.bounceIn,
                scale: footballGroundRatingsProvider.getRating(widget.footballGroundName) == null ? 0 : 1.0,
                child: Icon(
                  Icons.check,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _ratingController.dispose();
    super.dispose();
  }
}
