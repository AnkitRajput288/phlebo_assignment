// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class LocationModelData extends DataClass
    implements Insertable<LocationModelData> {
  final String localId;
  final String? name;
  final String? street;
  final String? locality;
  final String? sector;
  final String? city;
  final String? state;
  final String? pinCode;
  final String? country;
  final String? time;
  final String? date;
  final String? lat;
  final String? long;
  const LocationModelData(
      {required this.localId,
      this.name,
      this.street,
      this.locality,
      this.sector,
      this.city,
      this.state,
      this.pinCode,
      this.country,
      this.time,
      this.date,
      this.lat,
      this.long});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String>(street);
    }
    if (!nullToAbsent || locality != null) {
      map['locality'] = Variable<String>(locality);
    }
    if (!nullToAbsent || sector != null) {
      map['sector'] = Variable<String>(sector);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || pinCode != null) {
      map['pin_code'] = Variable<String>(pinCode);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<String>(time);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<String>(date);
    }
    if (!nullToAbsent || lat != null) {
      map['lat'] = Variable<String>(lat);
    }
    if (!nullToAbsent || long != null) {
      map['long'] = Variable<String>(long);
    }
    return map;
  }

  LocationModelCompanion toCompanion(bool nullToAbsent) {
    return LocationModelCompanion(
      localId: Value(localId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      locality: locality == null && nullToAbsent
          ? const Value.absent()
          : Value(locality),
      sector:
          sector == null && nullToAbsent ? const Value.absent() : Value(sector),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      pinCode: pinCode == null && nullToAbsent
          ? const Value.absent()
          : Value(pinCode),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      lat: lat == null && nullToAbsent ? const Value.absent() : Value(lat),
      long: long == null && nullToAbsent ? const Value.absent() : Value(long),
    );
  }

  factory LocationModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationModelData(
      localId: serializer.fromJson<String>(json['localId']),
      name: serializer.fromJson<String?>(json['name']),
      street: serializer.fromJson<String?>(json['street']),
      locality: serializer.fromJson<String?>(json['locality']),
      sector: serializer.fromJson<String?>(json['sector']),
      city: serializer.fromJson<String?>(json['city']),
      state: serializer.fromJson<String?>(json['state']),
      pinCode: serializer.fromJson<String?>(json['pinCode']),
      country: serializer.fromJson<String?>(json['country']),
      time: serializer.fromJson<String?>(json['time']),
      date: serializer.fromJson<String?>(json['date']),
      lat: serializer.fromJson<String?>(json['lat']),
      long: serializer.fromJson<String?>(json['long']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'localId': serializer.toJson<String>(localId),
      'name': serializer.toJson<String?>(name),
      'street': serializer.toJson<String?>(street),
      'locality': serializer.toJson<String?>(locality),
      'sector': serializer.toJson<String?>(sector),
      'city': serializer.toJson<String?>(city),
      'state': serializer.toJson<String?>(state),
      'pinCode': serializer.toJson<String?>(pinCode),
      'country': serializer.toJson<String?>(country),
      'time': serializer.toJson<String?>(time),
      'date': serializer.toJson<String?>(date),
      'lat': serializer.toJson<String?>(lat),
      'long': serializer.toJson<String?>(long),
    };
  }

  LocationModelData copyWith(
          {String? localId,
          Value<String?> name = const Value.absent(),
          Value<String?> street = const Value.absent(),
          Value<String?> locality = const Value.absent(),
          Value<String?> sector = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> state = const Value.absent(),
          Value<String?> pinCode = const Value.absent(),
          Value<String?> country = const Value.absent(),
          Value<String?> time = const Value.absent(),
          Value<String?> date = const Value.absent(),
          Value<String?> lat = const Value.absent(),
          Value<String?> long = const Value.absent()}) =>
      LocationModelData(
        localId: localId ?? this.localId,
        name: name.present ? name.value : this.name,
        street: street.present ? street.value : this.street,
        locality: locality.present ? locality.value : this.locality,
        sector: sector.present ? sector.value : this.sector,
        city: city.present ? city.value : this.city,
        state: state.present ? state.value : this.state,
        pinCode: pinCode.present ? pinCode.value : this.pinCode,
        country: country.present ? country.value : this.country,
        time: time.present ? time.value : this.time,
        date: date.present ? date.value : this.date,
        lat: lat.present ? lat.value : this.lat,
        long: long.present ? long.value : this.long,
      );
  @override
  String toString() {
    return (StringBuffer('LocationModelData(')
          ..write('localId: $localId, ')
          ..write('name: $name, ')
          ..write('street: $street, ')
          ..write('locality: $locality, ')
          ..write('sector: $sector, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('pinCode: $pinCode, ')
          ..write('country: $country, ')
          ..write('time: $time, ')
          ..write('date: $date, ')
          ..write('lat: $lat, ')
          ..write('long: $long')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(localId, name, street, locality, sector, city,
      state, pinCode, country, time, date, lat, long);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationModelData &&
          other.localId == this.localId &&
          other.name == this.name &&
          other.street == this.street &&
          other.locality == this.locality &&
          other.sector == this.sector &&
          other.city == this.city &&
          other.state == this.state &&
          other.pinCode == this.pinCode &&
          other.country == this.country &&
          other.time == this.time &&
          other.date == this.date &&
          other.lat == this.lat &&
          other.long == this.long);
}

class LocationModelCompanion extends UpdateCompanion<LocationModelData> {
  final Value<String> localId;
  final Value<String?> name;
  final Value<String?> street;
  final Value<String?> locality;
  final Value<String?> sector;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> pinCode;
  final Value<String?> country;
  final Value<String?> time;
  final Value<String?> date;
  final Value<String?> lat;
  final Value<String?> long;
  const LocationModelCompanion({
    this.localId = const Value.absent(),
    this.name = const Value.absent(),
    this.street = const Value.absent(),
    this.locality = const Value.absent(),
    this.sector = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.pinCode = const Value.absent(),
    this.country = const Value.absent(),
    this.time = const Value.absent(),
    this.date = const Value.absent(),
    this.lat = const Value.absent(),
    this.long = const Value.absent(),
  });
  LocationModelCompanion.insert({
    this.localId = const Value.absent(),
    this.name = const Value.absent(),
    this.street = const Value.absent(),
    this.locality = const Value.absent(),
    this.sector = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.pinCode = const Value.absent(),
    this.country = const Value.absent(),
    this.time = const Value.absent(),
    this.date = const Value.absent(),
    this.lat = const Value.absent(),
    this.long = const Value.absent(),
  });
  static Insertable<LocationModelData> custom({
    Expression<String>? localId,
    Expression<String>? name,
    Expression<String>? street,
    Expression<String>? locality,
    Expression<String>? sector,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? pinCode,
    Expression<String>? country,
    Expression<String>? time,
    Expression<String>? date,
    Expression<String>? lat,
    Expression<String>? long,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (name != null) 'name': name,
      if (street != null) 'street': street,
      if (locality != null) 'locality': locality,
      if (sector != null) 'sector': sector,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (pinCode != null) 'pin_code': pinCode,
      if (country != null) 'country': country,
      if (time != null) 'time': time,
      if (date != null) 'date': date,
      if (lat != null) 'lat': lat,
      if (long != null) 'long': long,
    });
  }

  LocationModelCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? name,
      Value<String?>? street,
      Value<String?>? locality,
      Value<String?>? sector,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? pinCode,
      Value<String?>? country,
      Value<String?>? time,
      Value<String?>? date,
      Value<String?>? lat,
      Value<String?>? long}) {
    return LocationModelCompanion(
      localId: localId ?? this.localId,
      name: name ?? this.name,
      street: street ?? this.street,
      locality: locality ?? this.locality,
      sector: sector ?? this.sector,
      city: city ?? this.city,
      state: state ?? this.state,
      pinCode: pinCode ?? this.pinCode,
      country: country ?? this.country,
      time: time ?? this.time,
      date: date ?? this.date,
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (locality.present) {
      map['locality'] = Variable<String>(locality.value);
    }
    if (sector.present) {
      map['sector'] = Variable<String>(sector.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (pinCode.present) {
      map['pin_code'] = Variable<String>(pinCode.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (lat.present) {
      map['lat'] = Variable<String>(lat.value);
    }
    if (long.present) {
      map['long'] = Variable<String>(long.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationModelCompanion(')
          ..write('localId: $localId, ')
          ..write('name: $name, ')
          ..write('street: $street, ')
          ..write('locality: $locality, ')
          ..write('sector: $sector, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('pinCode: $pinCode, ')
          ..write('country: $country, ')
          ..write('time: $time, ')
          ..write('date: $date, ')
          ..write('lat: $lat, ')
          ..write('long: $long')
          ..write(')'))
        .toString();
  }
}

class $LocationModelTable extends LocationModel
    with TableInfo<$LocationModelTable, LocationModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocationModelTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _localIdMeta = const VerificationMeta('localId');
  @override
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => const Uuid().v4());
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _localityMeta = const VerificationMeta('locality');
  @override
  late final GeneratedColumn<String> locality = GeneratedColumn<String>(
      'locality', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _sectorMeta = const VerificationMeta('sector');
  @override
  late final GeneratedColumn<String> sector = GeneratedColumn<String>(
      'sector', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _pinCodeMeta = const VerificationMeta('pinCode');
  @override
  late final GeneratedColumn<String> pinCode = GeneratedColumn<String>(
      'pin_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _countryMeta = const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
      'time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<String> lat = GeneratedColumn<String>(
      'lat', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _longMeta = const VerificationMeta('long');
  @override
  late final GeneratedColumn<String> long = GeneratedColumn<String>(
      'long', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        localId,
        name,
        street,
        locality,
        sector,
        city,
        state,
        pinCode,
        country,
        time,
        date,
        lat,
        long
      ];
  @override
  String get aliasedName => _alias ?? 'location_model';
  @override
  String get actualTableName => 'location_model';
  @override
  VerificationContext validateIntegrity(Insertable<LocationModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    }
    if (data.containsKey('locality')) {
      context.handle(_localityMeta,
          locality.isAcceptableOrUnknown(data['locality']!, _localityMeta));
    }
    if (data.containsKey('sector')) {
      context.handle(_sectorMeta,
          sector.isAcceptableOrUnknown(data['sector']!, _sectorMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('pin_code')) {
      context.handle(_pinCodeMeta,
          pinCode.isAcceptableOrUnknown(data['pin_code']!, _pinCodeMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    }
    if (data.containsKey('long')) {
      context.handle(
          _longMeta, long.isAcceptableOrUnknown(data['long']!, _longMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  LocationModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocationModelData(
      localId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      street: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}street']),
      locality: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}locality']),
      sector: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}sector']),
      city: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      state: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      pinCode: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}pin_code']),
      country: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}country']),
      time: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}time']),
      date: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}date']),
      lat: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}lat']),
      long: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}long']),
    );
  }

  @override
  $LocationModelTable createAlias(String alias) {
    return $LocationModelTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $LocationModelTable locationModel = $LocationModelTable(this);
  late final LocationDao locationDao = LocationDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [locationModel];
}
