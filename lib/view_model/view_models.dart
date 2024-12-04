
import 'package:flutter/foundation.dart';

class FileData {
  FileData({
    this.path,
    this.bytes,
    this.extension,
    this.url,
    this.id,
    this.order,
    this.tags,
    this.parentId,
    this.children,
  });

  final String? path;
  final String? extension;
  final Uint8List? bytes;
  final String? url;
  String? id;
  String? parentId;
  int? order;
  List<int>? tags;
  List<FileData>? children;
}
