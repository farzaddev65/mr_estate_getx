// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoModelsAdapter extends TypeAdapter<TodoModels> {
  @override
  final int typeId = 1;

  @override
  TodoModels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoModels(
      text: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TodoModels obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoModelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
