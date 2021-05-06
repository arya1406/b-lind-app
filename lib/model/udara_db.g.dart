// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'udara_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KualitasUdaraAdapter extends TypeAdapter<KualitasUdara> {
  @override
  final int typeId = 0;

  @override
  KualitasUdara read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KualitasUdara(
      wilayah: fields[0] as String,
      status: fields[1] as String,
      wilayah1: fields[2] as String,
      status1: fields[3] as String,
      wilayah2: fields[4] as String,
      status2: fields[5] as String,
      wilayah3: fields[6] as String,
      status3: fields[7] as String,
      wilayah4: fields[8] as String,
      status4: fields[9] as String,
      wilayah5: fields[10] as String,
      status5: fields[11] as String,
      wilayah6: fields[12] as String,
      status6: fields[13] as String,
      wilayah7: fields[14] as String,
      status7: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, KualitasUdara obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.wilayah)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.wilayah1)
      ..writeByte(3)
      ..write(obj.status1)
      ..writeByte(4)
      ..write(obj.wilayah2)
      ..writeByte(5)
      ..write(obj.status2)
      ..writeByte(6)
      ..write(obj.wilayah3)
      ..writeByte(7)
      ..write(obj.status3)
      ..writeByte(8)
      ..write(obj.wilayah4)
      ..writeByte(9)
      ..write(obj.status4)
      ..writeByte(10)
      ..write(obj.wilayah5)
      ..writeByte(11)
      ..write(obj.status5)
      ..writeByte(12)
      ..write(obj.wilayah6)
      ..writeByte(13)
      ..write(obj.status6)
      ..writeByte(14)
      ..write(obj.wilayah7)
      ..writeByte(15)
      ..write(obj.status7);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KualitasUdaraAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
