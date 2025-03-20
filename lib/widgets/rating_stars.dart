import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final double size;
  final Color color;
  final bool showRating;

  const RatingStars({
    Key? key,
    required this.rating,
    this.size = 16,
    this.color = const Color(0xFFFFB800),
    this.showRating = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              index < rating ? Icons.star : Icons.star_border,
              color: color,
              size: size,
            ),
          ),
        ),
        if (showRating) ...[
          const SizedBox(width: 4),
          Text(
            rating.toString(),
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ],
    );
  }
}