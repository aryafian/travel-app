import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/trip_detail_screen.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          primary: Colors.red,
        ),
        useMaterial3: true,
        // fontFamily: 'Inter', // Uncomment when fonts are available
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/trip': (context) => const TripDetailScreen(),
      },
    );
  }
}