import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
part 'database.g.dart';

class Result extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get bmi => text()();
  TextColumn get resultText => text().named('description')();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Result])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> addResult(ResultCompanion entry) async {
    return await into(result).insert(entry);
  }

  ///GET ALL RESULTS FROM DB
  Future<List<ResultData>> getResultList() async {
    return await select(result).get();
  }
}
