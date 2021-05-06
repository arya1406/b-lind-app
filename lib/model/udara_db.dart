import 'dart:core';

import 'package:hive/hive.dart';

part 'udara_db.g.dart';

@HiveType(typeId: 0)
class KualitasUdara {
  @HiveField(0)
  final String wilayah;
  @HiveField(1)
  final String status;
  @HiveField(2)
  final String wilayah1;
  @HiveField(3)
  final String status1;
  @HiveField(4)
  final String wilayah2;
  @HiveField(5)
  final String status2;
  @HiveField(6)
  final String wilayah3;
  @HiveField(7)
  final String status3;
  @HiveField(8)
  final String wilayah4;
  @HiveField(9)
  final String status4;
  @HiveField(10)
  final String wilayah5;
  @HiveField(11)
  final String status5;
  @HiveField(12)
  final String wilayah6;
  @HiveField(13)
  final String status6;
  @HiveField(14)
  final String wilayah7;
  @HiveField(15)
  final String status7;

  KualitasUdara({
    this.wilayah,
    this.status,
    this.wilayah1,
    this.status1,
    this.wilayah2,
    this.status2,
    this.wilayah3,
    this.status3,
    this.wilayah4,
    this.status4,
    this.wilayah5,
    this.status5,
    this.wilayah6,
    this.status6,
    this.wilayah7,
    this.status7,
  });
}
