import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plebo_india_project/database/location_dao.dart';
import 'package:uuid/uuid.dart';

import '../models/location_model.dart';
import 'connection/connection.dart' as impl;

part 'database.g.dart';

@DriftDatabase(tables: <Type>[LocationModel], daos: [LocationDao])
class AppDatabase extends _$AppDatabase {
  static var instance = AppDatabase();

  AppDatabase() : super.connect(impl.connect());

  @override
  int get schemaVersion => 1;

  static Provider<AppDatabase> provider = Provider((ref) {
    ref.onDispose(instance.close);

    return instance;
  });
}
