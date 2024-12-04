import 'dart:io';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';

void openPicker({
  required final Function(List<File> res) action,
  final Function(double size)? imageSize,
  final FileType? type,
  final List<String>? allowedExtensions,
  final int? maxFileSize,
  final bool? allowMultiple,
  final int? maxDuration,
  final bool? usedCameraButton,
  final CropAspectRatio? cropAspectRatio,
  final bool? enableCropping,
}) async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    allowMultiple: allowMultiple??false,
    type: type ?? FileType.image,
    initialDirectory: 'ddddd',

    allowedExtensions: allowedExtensions,
  );

  finalFiles.clear();
  cropCount = 0;
  final List<PlatformFile> files = result?.files ?? <PlatformFile>[];

  final int size = files.lastOrNull?.size ?? 0;

  if (size < (maxFileSize ?? 1000000000)) {
    if (enableCropping ?? true && (type??FileType.image) == FileType.image) {
      cropper(
        files: files,
        cropAspectRatio: cropAspectRatio,
        action: () {
          action(finalFiles);
        },
      );
    } else {
      finalFiles.clear();
      for (int i = 0; i < files.length; i++) {
        finalFiles.add(File(files[i].path!));
      }
      action(finalFiles);
    }
  } else {
    // snackBarRed(title: s.error, subtitle: s.theFileSizeMustBeLessThanSizeMB((maxFileSize ?? 10000000)~/1000000));
  }
}

int cropCount = 0;
List<File> finalFiles = <File>[];

void cropper({
  required final List<PlatformFile> files,
  required final VoidCallback action,
  final CropAspectRatio? cropAspectRatio,
}) async {
  final List<PlatformFile> images = files
      .where(
        (final PlatformFile element) => element.path?.isImageFileName ?? false,
      )
      .toList();
  if (cropCount == images.length) {
    action();
  } else {
    final CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: images[cropCount].path!,
      aspectRatio: cropAspectRatio,
      compressQuality: 20,

      uiSettings: <PlatformUiSettings>[
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          aspectRatioPresets: <CropAspectRatioPresetData>[
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPresetCustom(), //
          ],
        ),
        IOSUiSettings(
          title: 'Cropper',
          aspectRatioPresets: <CropAspectRatioPresetData>[
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
          ],
        ),
        WebUiSettings(
          context: Get.context!,
        ),
      ],
    );
    if (croppedFile != null) {
      final File file = File(croppedFile.path);
      finalFiles.add(file);
      cropCount++;
      cropper(files: files, action: action, cropAspectRatio: cropAspectRatio);
    }
  }
}

class CropAspectRatioPresetCustom implements CropAspectRatioPresetData {
  @override
  (int, int)? get data => (9, 16);

  @override
  String get name => '9x16 (customized)';
}
