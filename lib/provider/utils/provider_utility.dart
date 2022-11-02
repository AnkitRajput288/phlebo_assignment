import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../location_provider.dart';


final locationProvider = ChangeNotifierProvider<LocationProvider>(
  (ref) => LocationProvider(),
);
