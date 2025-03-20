class Trip {
  final int id;
  final String title;
  final List<String> images;
  final int price;
  final int originalPrice;
  final String? discount;
  final double rating;
  final int reviews;
  final String location;
  final String type;
  final List<String> features;
  final bool popular;
  final String duration;
  final String summary;
  final List<String> includes;
  final List<String> excludes;
  final List<String> terms;
  final List<String> itinerary;
  final List<Review> reviewsData;

  Trip({
    required this.id,
    required this.title,
    required this.images,
    required this.originalPrice,
    required this.price,
    this.discount,
    required this.rating,
    required this.reviews,
    required this.location,
    required this.type,
    required this.features,
    required this.popular,
    required this.duration,
    required this.summary,
    required this.includes,
    required this.excludes,
    required this.terms,
    required this.itinerary,
    required this.reviewsData,
  });
}

class Review {
  final String name;
  final int rating;
  final String comment;
  final int helpful;
  final int notHelpful;

  Review({
    required this.name,
    required this.rating,
    required this.comment,
    required this.helpful,
    required this.notHelpful,
  });
}

