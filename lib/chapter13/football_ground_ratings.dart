import 'package:flutter/foundation.dart';

class FootballGroundRatingsProvider extends ChangeNotifier {
  final Map<String, int> _ratings = {};

  int get totalRatings => _ratings.length;

  int? getRating(String footballGroundName) {
    return _ratings[footballGroundName];
  }

  void submitRating(String footballGroundName, int rating) {
    _ratings[footballGroundName] = rating;
    notifyListeners();
    debugPrint('New rating submitted: $rating');
  }
}
