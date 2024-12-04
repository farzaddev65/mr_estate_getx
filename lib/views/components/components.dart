import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:sample_getx/core/enums.dart';
import 'package:sample_getx/core/extensions/extensions.dart';
import 'package:sample_getx/core/futurs/galery_picker.dart';
import 'package:sample_getx/core/themes/app_images.dart';
import 'package:sample_getx/utils/persian_date_picker/persian_datetime_picker.dart';
import 'package:sample_getx/utils/persian_date_picker/src/date/shamsi_date.dart';
import 'package:sample_getx/utils/utils.dart';
import 'package:sample_getx/view_model/view_models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:lottie/lottie.dart' as lottie;

part 'form.dart';
part 'image.dart';
