import '../models/trip.dart';

List<Trip> trips = [
  Trip(
    id: 1,
    title: "Bali Island Hopping Adventure",
    images: [
      "https://i0.wp.com/gilivoyages.com/wp-content/uploads/2023/12/island-hopping-bali.jpg?fit=1800%2C1011&ssl=1",
      "https://i0.wp.com/gilivoyages.com/wp-content/uploads/2023/12/Gili-Air-and-Meno.png?resize=512%2C341&ssl=1",
      "https://i0.wp.com/gilivoyages.com/wp-content/uploads/2023/12/island-hopping-bali.jpg?fit=1800%2C1011&ssl=1",
    ],
    price: 1250000,
    originalPrice: 1450000,
    discount: "-14%",
    rating: 4.8,
    reviews: 1411,
    location: "Kuta, Bali",
    type: "Open Trip",
    features: ["Termasuk Hotel", "Makan 3x", "Tour Guide"],
    popular: true,
    duration: "3 Days 2 Nights",
    summary:
        "Experience the beauty of Indonesia with this amazing trip package. Explore stunning landscapes, enjoy local cuisine, and create unforgettable memories.",
    includes: [
      "Hotel accommodation",
      "Breakfast, lunch and dinner",
      "Transportation",
      "Tour guide",
      "Entrance tickets",
    ],
    excludes: [
      "Personal expenses",
      "Travel insurance",
      "Optional activities",
      "Airfare"
    ],
    terms: [
      "Booking must be made at least 7 days before departure",
      "Cancellation policy: 100% refund if cancelled 7 days before departure",
      "50% refund if cancelled 3-6 days before departure",
      "No refund if cancelled less than 3 days before departure",
      "Minimum 2 participants required for open trip",
    ],
    itinerary: [
      "Day 1: Arrival and welcome dinner",
      "Day 2: Full day exploration of main attractions",
      "Day 3: Free morning and departure",
    ],
    reviewsData: [
      Review(
        name: "John D.",
        rating: 5,
        comment:
            "Amazing experience! The tour was well organized and our guide was knowledgeable.",
        helpful: 24,
        notHelpful: 2,
      ),
      Review(
        name: "Sarah M.",
        rating: 4,
        comment:
            "Great trip overall. The accommodations were comfortable, but the food could have been better.",
        helpful: 18,
        notHelpful: 3,
      ),
      Review(
        name: "Alex K.",
        rating: 5,
        comment:
            "Unforgettable adventure! The scenery was breathtaking and the activities were well-planned.",
        helpful: 31,
        notHelpful: 1,
      ),
    ],
  ),
  Trip(
    id: 2,
    title: "Mount Bromo Sunrise Tour",
    images: [
      "https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnQlMjBicm9tb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnQlMjBicm9tb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnQlMjBicm9tb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
    ],
    price: 850000,
    originalPrice: 850000,
    rating: 4.6,
    reviews: 703,
    location: "Probolinggo, Jawa Timur",
    type: "Private Trip",
    features: ["Termasuk Hotel", "Makan 2x", "Transportasi"],
    popular: false,
    duration: "3 Days 2 Nights",
    summary:
        "Experience the beauty of Indonesia with this amazing trip package. Explore stunning landscapes, enjoy local cuisine, and create unforgettable memories.",
    includes: [
      "Hotel accommodation",
      "Breakfast, lunch and dinner",
      "Transportation",
      "Tour guide",
      "Entrance tickets",
    ],
    excludes: [
      "Personal expenses",
      "Travel insurance",
      "Optional activities",
      "Airfare"
    ],
    terms: [
      "Booking must be made at least 7 days before departure",
      "Cancellation policy: 100% refund if cancelled 7 days before departure",
      "50% refund if cancelled 3-6 days before departure",
      "No refund if cancelled less than 3 days before departure",
      "Minimum 2 participants required for open trip",
    ],
    itinerary: [
      "Day 1: Arrival and welcome dinner",
      "Day 2: Full day exploration of main attractions",
      "Day 3: Free morning and departure",
    ],
    reviewsData: [
      Review(
        name: "John D.",
        rating: 5,
        comment:
            "Amazing experience! The tour was well organized and our guide was knowledgeable.",
        helpful: 24,
        notHelpful: 2,
      ),
      Review(
        name: "Sarah M.",
        rating: 4,
        comment:
            "Great trip overall. The accommodations were comfortable, but the food could have been better.",
        helpful: 18,
        notHelpful: 3,
      ),
      Review(
        name: "Alex K.",
        rating: 5,
        comment:
            "Unforgettable adventure! The scenery was breathtaking and the activities were well-planned.",
        helpful: 31,
        notHelpful: 1,
      ),
    ],
  ),
  Trip(
    id: 3,
    title: "Komodo Island Exploration",
    images: [
      "https://images.unsplash.com/photo-1543184225-597990c5ee8b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a29tb2RvJTIwaXNsYW5kfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1543184225-597990c5ee8b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a29tb2RvJTIwaXNsYW5kfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1543184225-597990c5ee8b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a29tb2RvJTIwaXNsYW5kfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    ],
    price: 2350000,
    originalPrice: 2650000,
    discount: "-11%",
    rating: 4.9,
    reviews: 892,
    location: "Labuan Bajo, NTT",
    type: "Open Trip",
    features: ["Termasuk Hotel", "Makan 3x", "Boat Tour"],
    popular: true,
    duration: "3 Days 2 Nights",
    summary:
        "Experience the beauty of Indonesia with this amazing trip package. Explore stunning landscapes, enjoy local cuisine, and create unforgettable memories.",
    includes: [
      "Hotel accommodation",
      "Breakfast, lunch and dinner",
      "Transportation",
      "Tour guide",
      "Entrance tickets",
    ],
    excludes: [
      "Personal expenses",
      "Travel insurance",
      "Optional activities",
      "Airfare"
    ],
    terms: [
      "Booking must be made at least 7 days before departure",
      "Cancellation policy: 100% refund if cancelled 7 days before departure",
      "50% refund if cancelled 3-6 days before departure",
      "No refund if cancelled less than 3 days before departure",
      "Minimum 2 participants required for open trip",
    ],
    itinerary: [
      "Day 1: Arrival and welcome dinner",
      "Day 2: Full day exploration of main attractions",
      "Day 3: Free morning and departure",
    ],
    reviewsData: [
      Review(
        name: "John D.",
        rating: 5,
        comment:
            "Amazing experience! The tour was well organized and our guide was knowledgeable.",
        helpful: 24,
        notHelpful: 2,
      ),
      Review(
        name: "Sarah M.",
        rating: 4,
        comment:
            "Great trip overall. The accommodations were comfortable, but the food could have been better.",
        helpful: 18,
        notHelpful: 3,
      ),
      Review(
        name: "Alex K.",
        rating: 5,
        comment:
            "Unforgettable adventure! The scenery was breathtaking and the activities were well-planned.",
        helpful: 31,
        notHelpful: 1,
      ),
    ],
  ),
  Trip(
    id: 4,
    title: "Raja Ampat Diving Package",
    images: [
      "https://images.unsplash.com/photo-1580422443080-9af86927c45f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFqYSUyMGFtcGF0fGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1580422443080-9af86927c45f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFqYSUyMGFtcGF0fGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1580422443080-9af86927c45f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFqYSUyMGFtcGF0fGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    ],
    price: 3750000,
    originalPrice: 3750000,
    rating: 5.0,
    reviews: 456,
    location: "Sorong, Papua Barat",
    type: "Private Trip",
    features: ["Termasuk Resort", "Full Board", "Diving Equipment"],
    popular: false,
    duration: "3 Days 2 Nights",
    summary:
        "Experience the beauty of Indonesia with this amazing trip package. Explore stunning landscapes, enjoy local cuisine, and create unforgettable memories.",
    includes: [
      "Hotel accommodation",
      "Breakfast, lunch and dinner",
      "Transportation",
      "Tour guide",
      "Entrance tickets",
    ],
    excludes: [
      "Personal expenses",
      "Travel insurance",
      "Optional activities",
      "Airfare"
    ],
    terms: [
      "Booking must be made at least 7 days before departure",
      "Cancellation policy: 100% refund if cancelled 7 days before departure",
      "50% refund if cancelled 3-6 days before departure",
      "No refund if cancelled less than 3 days before departure",
      "Minimum 2 participants required for open trip",
    ],
    itinerary: [
      "Day 1: Arrival and welcome dinner",
      "Day 2: Full day exploration of main attractions",
      "Day 3: Free morning and departure",
    ],
    reviewsData: [
      Review(
        name: "John D.",
        rating: 5,
        comment:
            "Amazing experience! The tour was well organized and our guide was knowledgeable.",
        helpful: 24,
        notHelpful: 2,
      ),
      Review(
        name: "Sarah M.",
        rating: 4,
        comment:
            "Great trip overall. The accommodations were comfortable, but the food could have been better.",
        helpful: 18,
        notHelpful: 3,
      ),
      Review(
        name: "Alex K.",
        rating: 5,
        comment:
            "Unforgettable adventure! The scenery was breathtaking and the activities were well-planned.",
        helpful: 31,
        notHelpful: 1,
      ),
    ],
  ),
];