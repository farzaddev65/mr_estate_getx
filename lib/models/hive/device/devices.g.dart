// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DevicesAdapter extends TypeAdapter<Devices> {
  @override
  final int typeId = 0;

  @override
  Devices read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Devices(
      title: fields[0] as String,
      model: fields[1] as String,
      code: fields[2] as String,
      createdAtDate: fields[3] as DateTime,
      isCompleted: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Devices obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.model)
      ..writeByte(2)
      ..write(obj.code)
      ..writeByte(3)
      ..write(obj.createdAtDate)
      ..writeByte(4)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DevicesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
