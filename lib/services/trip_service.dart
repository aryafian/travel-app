import '../models/trip.dart';
import '../data/trips_data.dart';

class TripService {
  List<Trip> getAllTrips() {
    return trips;
  }

  Trip getTripById(int id) {
    return trips.firstWhere(
      (trip) => trip.id == id,
      orElse: () => throw Exception('Trip not found'),
    );
  }

  List<Trip> getPopularTrips() {
    return trips.where((trip) => trip.popular).toList();
  }

  List<Trip> getOpenTrips() {
    return trips.where((trip) => trip.type == 'Open Trip').toList();
  }

  List<Trip> getPrivateTrips() {
    return trips.where((trip) => trip.type == 'Private Trip').toList();
  }
}
