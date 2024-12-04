import 'package:hive/hive.dart';
import 'package:sample_getx/core/constants.dart';
import 'package:sample_getx/core/core.dart';
import 'package:sample_getx/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

part 'get.dart';
part 'local_storage.dart';

void delay(final int milliseconds, final VoidCallback action) async => Future<dynamic>.delayed(
  Duration(milliseconds: milliseconds),
      () async => action(),
);
