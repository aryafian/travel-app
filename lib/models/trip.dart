class Trip {
  final int id;
  final String title;
  final String location;
  final String duration;
  final List<String> images;
  final double rating;
  final int reviews;
  final int price;
  final int originalPrice;
  final String? discount;
  final bool popular;
  final List<String> features;
  final String summary;
  final List<String> includes;
  final List<String> excludes;
  final List<String> terms;
  final List<String> itinerary;
  final List<Review> reviewsData;
  final String type;

  Trip({
    required this.id,
    required this.title,
    required this.location,
    required this.duration,
    required this.images,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.originalPrice,
    this.discount,
    required this.popular,
    required this.features,
    required this.summary,
    required this.includes,
    required this.excludes,
    required this.terms,
    required this.itinerary,
    required this.reviewsData,
    this.type = 'Open Trip',
  });
}

class Review {
  final String name;
  final String comment;
  final int rating;
  final int helpful;
  final int notHelpful;

  Review({
    required this.name,
    required this.comment,
    required this.rating,
    required this.helpful,
    required this.notHelpful,
  });
}