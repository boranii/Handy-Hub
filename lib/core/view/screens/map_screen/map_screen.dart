import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart'; // Import the new package

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Use a Completer to manage the map controller
  late GoogleMapController _mapController;

  // State variable to hold the user's current position
  LatLng? _currentPosition;

  // Default camera position until we get the user's location
  static const CameraPosition _defaultCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962), // Mountain View, CA
    zoom: 14.0,
  );

  @override
  void initState() {
    super.initState();
    // Start fetching the location when the widget is created
    _determinePosition();
  }

  // A helper function to request permission and get location
  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      return Future.error('Location services are disabled.');
    }

    // Check for permission.
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When permissions are granted, get the current position.
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: AndroidSettings(accuracy: LocationAccuracy.high),
        );

    // Update the state and move the map camera to the new location
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
    });

    _mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: _currentPosition!,
          zoom: 15.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Show a loading spinner until the location is retrieved
    if (_currentPosition == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text('My Location Map')),
      body: GoogleMap(
        // 1. Store the map controller
        onMapCreated: (controller) {
          _mapController = controller;
        },

        // Use the initial position (now the retrieved user location)
        initialCameraPosition: CameraPosition(
          target: _currentPosition!,
          zoom: 15.0,
        ),

        // 2. This property displays the blue dot and accuracy circle!
        myLocationEnabled: true,
        // 3. This property displays a button to re-center the map on the user's location
        myLocationButtonEnabled: true,
        mapType: MapType.normal,
        zoomControlsEnabled: true,
      ),
    );
  }
}