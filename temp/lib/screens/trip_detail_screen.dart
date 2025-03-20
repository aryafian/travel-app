import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/data/trips_data.dart';
import 'package:travel_app/models/trip.dart';

class TripDetailScreen extends StatefulWidget {
  final int? tripId;

  const TripDetailScreen({super.key, this.tripId});

  @override
  State<TripDetailScreen> createState() => _TripDetailScreenState();
}

class _TripDetailScreenState extends State<TripDetailScreen> {
  bool isFavorite = false;
  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(
      locale: 'id',
      symbol: 'IDR ',
      decimalDigits: 0,
    );

    // Find the trip by ID
    final trip = trips.firstWhere(
      (trip) => trip.id == (widget.tripId ?? 1),
      orElse: () => trips[0],
    );

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFE5E5E5),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.chevron_left, size: 24),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      trip.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : null,
                    ),
                    onPressed: toggleFavorite,
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    // Trip Image
                    Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          child: PageView.builder(
                            controller: _pageController,
                            itemCount: trip.images.length,
                            onPageChanged: (index) {
                              setState(() {
                                _currentPage = index;
                              });
                            },
                            itemBuilder: (context, index) {
                              return Image.network(
                                trip.images[index],
                                height: 250,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: Row(
                            children: List.generate(
                              trip.images.length,
                              (index) => Container(
                                width: 8,
                                height: 8,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == 0
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 12,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  trip.location,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 16,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_currentPage > 0) {
                                  _currentPage--;
                                } else {
                                  _currentPage = trip.images.length -
                                      1; // Kembali ke gambar terakhir
                                }
                                _pageController.animateToPage(
                                  _currentPage,
                                  duration: const Duration(
                                      milliseconds: 300), // Transisi animasi
                                  curve: Curves.easeInOut,
                                );
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                  6), // Mengecilkan ukuran tombol
                              decoration: BoxDecoration(
                                color: Colors.black
                                    .withOpacity(0.3), // Mengurangi opacity
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '<', // Ganti tanda panah
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16, // Ukuran teks panah
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 16,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_currentPage < trip.images.length - 1) {
                                  _currentPage++;
                                } else {
                                  _currentPage = 0; // Kembali ke gambar pertama
                                }
                                _pageController.animateToPage(
                                  _currentPage,
                                  duration: const Duration(
                                      milliseconds: 300), // Transisi animasi
                                  curve: Curves.easeInOut,
                                );
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                  6), // Mengecilkan ukuran tombol
                              decoration: BoxDecoration(
                                color: Colors.black
                                    .withOpacity(0.3), // Mengurangi opacity
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '>', // Ganti tanda panah
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16, // Ukuran teks panah
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Trip Info
                    Container(
                      padding: const EdgeInsets.all(16),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  trip.title,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              if (trip.discount != null)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    trip.discount!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xFFFFB800),
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                trip.rating.toString(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '/5',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF888888),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '(${trip.reviews.toString()} Review)',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF888888),
                                ),
                              ),
                              const Text(
                                ' • ',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFCCCCCC),
                                ),
                              ),
                              Text(
                                trip.duration,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF888888),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: trip.features.map((feature) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE6F9E6),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  feature,
                                  style: const TextStyle(
                                    color: Color(0xFF22A722),
                                    fontSize: 12,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            trip.summary,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF555555),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Tabs
                    const TabBar(
                      tabs: [
                        Tab(text: 'Details'),
                        Tab(text: 'Includes'),
                        Tab(text: 'Excludes'),
                        Tab(text: 'Terms'),
                        Tab(text: 'Reviews'),
                      ],
                      labelColor: Colors.black,
                      unselectedLabelColor: Color(0xFF888888),
                      indicatorColor: Colors.black,
                      labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    // Tab Content
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Details Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Trip Details',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'This ${trip.duration} package offers a complete experience of the destination. The trip is designed to provide both adventure and relaxation, with carefully selected accommodations and activities.',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF555555),
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  'Itinerary Highlights',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ...trip.itinerary.map((day) => Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('• ',
                                              style: TextStyle(fontSize: 14)),
                                          Expanded(
                                            child: Text(
                                              day,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF555555),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),

                          // Includes Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'What\'s Included',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ...trip.includes.map((item) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.check_circle,
                                            color: Color(0xFF22A722),
                                            size: 20,
                                          ),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF555555),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),

                          // Excludes Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'What\'s Not Included',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ...trip.excludes.map((item) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.cancel,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF555555),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),

                          // Terms Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Terms & Conditions',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ...trip.terms.map((item) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.info_outline,
                                            color: Color(0xFF2D7DF6),
                                            size: 20,
                                          ),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF555555),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),

                          // Reviews Tab
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Customer Reviews',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                ...trip.reviewsData.map((review) => Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 16),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xFFE5E5E5),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                review.name,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Row(
                                                children: List.generate(
                                                  5,
                                                  (index) => Icon(
                                                    Icons.star,
                                                    size: 16,
                                                    color: index < review.rating
                                                        ? const Color(
                                                            0xFFFFB800)
                                                        : const Color(
                                                            0xFFE0E0E0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            review.comment,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF555555),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Row(
                                            children: [
                                              TextButton.icon(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.thumb_up_outlined,
                                                  size: 16,
                                                  color: Color(0xFF888888),
                                                ),
                                                label: Text(
                                                  'Helpful (${review.helpful})',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF888888),
                                                  ),
                                                ),
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                  minimumSize: Size.zero,
                                                  tapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                ),
                                              ),
                                              const SizedBox(width: 16),
                                              TextButton.icon(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.thumb_down_outlined,
                                                  size: 16,
                                                  color: Color(0xFF888888),
                                                ),
                                                label: Text(
                                                  'Not Helpful (${review.notHelpful})',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF888888),
                                                  ),
                                                ),
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                  minimumSize: Size.zero,
                                                  tapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Color(0xFFE5E5E5),
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currencyFormat.format(trip.price),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const Text(
                  '/orang/paket',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF888888),
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.calendar_today_outlined, size: 20),
              label: const Text('Pesan Sekarang'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
