import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../database/database.dart';
import '../utils/print_utils.dart';

class LocationProvider extends ChangeNotifier {
  Position? _currentPosition;
  String? _currentAddress;

  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  Timer? timer;
  late LocationModelData dataModel;
  final AppDatabase database = AppDatabase();

  List<LocationModelData> listOfLocation = [];

  Future<void> getCurrentLocation() async {
    final hasPermission = await _handlePermission();
    debugPrint(_currentAddress.toString());
    if (!hasPermission) {
      return;
    }

    Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
      forceAndroidLocationManager: true,
    ).then((Position position) {
      _currentPosition = position;
      _getAddressFromLatLng();
      notifyListeners();
    }).catchError((e) {
      PrintUtils.printLog(e);
    });
  }

  Future<bool> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }
    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          _currentPosition!.latitude, _currentPosition!.longitude);

      Placemark place = placemarks[0];
      String date = DateFormat("dd-MM-yyyy hh:mm a").format(DateTime.now());
      String time = DateTime.now().second.toString();
      dataModel = LocationModelData(
        name: place.name,
        locality: place.locality,
        street: place.street,
        sector: place.subLocality,
        state: place.administrativeArea,
        pinCode: place.postalCode,
        country: place.country,
        time: time,
        date: date,
        lat: _currentPosition?.latitude.toString(),
        long: _currentPosition?.longitude.toString(),
        localId: const Uuid().v4(),
      );
      insertAddressData(dataModel);
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> insertAddressData(LocationModelData item) async {
    PrintUtils.printLog('Inserting ID: ${item.localId}');
    await database.locationDao.insertAddress(item);
  }

  Stream<List<LocationModelData>> getAddress() {
    return database.locationDao.watchAddresses();
  }
}
