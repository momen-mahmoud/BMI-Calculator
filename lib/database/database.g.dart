// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ResultData extends DataClass implements Insertable<ResultData> {
  final int id;
  final String bmi;
  final String resultText;
  final DateTime createdAt;
  const ResultData(
      {required this.id,
      required this.bmi,
      required this.resultText,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['bmi'] = Variable<String>(bmi);
    map['description'] = Variable<String>(resultText);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ResultCompanion toCompanion(bool nullToAbsent) {
    return ResultCompanion(
      id: Value(id),
      bmi: Value(bmi),
      resultText: Value(resultText),
      createdAt: Value(createdAt),
    );
  }

  factory ResultData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResultData(
      id: serializer.fromJson<int>(json['id']),
      bmi: serializer.fromJson<String>(json['bmi']),
      resultText: serializer.fromJson<String>(json['resultText']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bmi': serializer.toJson<String>(bmi),
      'resultText': serializer.toJson<String>(resultText),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ResultData copyWith(
          {int? id, String? bmi, String? resultText, DateTime? createdAt}) =>
      ResultData(
        id: id ?? this.id,
        bmi: bmi ?? this.bmi,
        resultText: resultText ?? this.resultText,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('ResultData(')
          ..write('id: $id, ')
          ..write('bmi: $bmi, ')
          ..write('resultText: $resultText, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bmi, resultText, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResultData &&
          other.id == this.id &&
          other.bmi == this.bmi &&
          other.resultText == this.resultText &&
          other.createdAt == this.createdAt);
}

class ResultCompanion extends UpdateCompanion<ResultData> {
  final Value<int> id;
  final Value<String> bmi;
  final Value<String> resultText;
  final Value<DateTime> createdAt;
  const ResultCompanion({
    this.id = const Value.absent(),
    this.bmi = const Value.absent(),
    this.resultText = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ResultCompanion.insert({
    this.id = const Value.absent(),
    required String bmi,
    required String resultText,
    this.createdAt = const Value.absent(),
  })  : bmi = Value(bmi),
        resultText = Value(resultText);
  static Insertable<ResultData> custom({
    Expression<int>? id,
    Expression<String>? bmi,
    Expression<String>? resultText,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bmi != null) 'bmi': bmi,
      if (resultText != null) 'description': resultText,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ResultCompanion copyWith(
      {Value<int>? id,
      Value<String>? bmi,
      Value<String>? resultText,
      Value<DateTime>? createdAt}) {
    return ResultCompanion(
      id: id ?? this.id,
      bmi: bmi ?? this.bmi,
      resultText: resultText ?? this.resultText,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bmi.present) {
      map['bmi'] = Variable<String>(bmi.value);
    }
    if (resultText.present) {
      map['description'] = Variable<String>(resultText.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResultCompanion(')
          ..write('id: $id, ')
          ..write('bmi: $bmi, ')
          ..write('resultText: $resultText, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ResultTable extends Result with TableInfo<$ResultTable, ResultData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResultTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _bmiMeta = const VerificationMeta('bmi');
  @override
  late final GeneratedColumn<String> bmi = GeneratedColumn<String>(
      'bmi', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _resultTextMeta = const VerificationMeta('resultText');
  @override
  late final GeneratedColumn<String> resultText = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [id, bmi, resultText, createdAt];
  @override
  String get aliasedName => _alias ?? 'result';
  @override
  String get actualTableName => 'result';
  @override
  VerificationContext validateIntegrity(Insertable<ResultData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('bmi')) {
      context.handle(
          _bmiMeta, bmi.isAcceptableOrUnknown(data['bmi']!, _bmiMeta));
    } else if (isInserting) {
      context.missing(_bmiMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _resultTextMeta,
          resultText.isAcceptableOrUnknown(
              data['description']!, _resultTextMeta));
    } else if (isInserting) {
      context.missing(_resultTextMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResultData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResultData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bmi: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}bmi'])!,
      resultText: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ResultTable createAlias(String alias) {
    return $ResultTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ResultTable result = $ResultTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [result];
}
