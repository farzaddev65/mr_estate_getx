// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceInfoModelAdapter extends TypeAdapter<DeviceInfoModel> {
  @override
  final int typeId = 3;

  @override
  DeviceInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceInfoModel(
      name: fields[0] as String,
      status: fields[1] as int,
      model: fields[2] as String,
      type: fields[3] as int,
      isActive: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DeviceInfoModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.model)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
