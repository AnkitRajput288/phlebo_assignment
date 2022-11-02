import 'package:drift/drift.dart';
import 'package:plebo_india_project/database/database.dart';

import '../models/location_model.dart';

part 'location_dao.g.dart';

@DriftAccessor(tables: [LocationModel])
class LocationDao extends DatabaseAccessor<AppDatabase>
    with _$LocationDaoMixin {
  LocationDao(super.attachedDatabase);

  Future<int> insertAddress(LocationModelData item) =>
      into(locationModel).insert(item, mode: InsertMode.insertOrIgnore);

  Stream<List<LocationModelData>> watchAddresses() =>
      _selectAppTrackDataToday().watch();

  SimpleSelectStatement<$LocationModelTable, LocationModelData>
      _selectAppTrackDataToday() {
    return select(locationModel);
  }
}
