import '../models/trip.dart';
import '../data/trips_data.dart';

class TripService {
  /// Get all trips
  List<Trip> getAllTrips() {
    return trips;
  }
  
  /// Get trip by id
  Trip getTripById(int id) {
    return trips.firstWhere(
      (trip) => trip.id == id,
      orElse: () => throw Exception('Trip not found'),
    );
  }
  
  /// Get popular trips
  List<Trip> getPopularTrips() {
    return trips.where((trip) => trip.popular).toList();
  }
  
  /// Get open trips
  List<Trip> getOpenTrips() {
    return trips.where((trip) => trip.type == 'Open Trip').toList();
  }
  
  /// Get private trips
  List<Trip> getPrivateTrips() {
    return trips.where((trip) => trip.type == 'Private Trip').toList();
  }
}