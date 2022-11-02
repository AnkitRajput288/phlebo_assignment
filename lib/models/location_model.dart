import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

class LocationModel extends Table {
  TextColumn get localId => text().clientDefault(() => const Uuid().v4())();
  TextColumn get name => text().nullable()();
  TextColumn get street => text().nullable()();
  TextColumn get locality => text().nullable()();
  TextColumn get sector => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get pinCode => text().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get time => text().nullable()();
  TextColumn get date => text().nullable()();
  TextColumn get lat => text().nullable()();
  TextColumn get long => text().nullable()();

  @override
  Set<Column> get primaryKey => {localId};
}
