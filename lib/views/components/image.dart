part of 'components.dart';

class UImage extends StatelessWidget {
  const UImage(
    this.source, {
    super.key,
    this.fileData,
    this.color,
    this.size,
    this.width,
    this.height,
    this.placeholder,
    this.progressIndicatorBuilder,
    this.fit = BoxFit.contain,
    this.borderRadius = 1,
  });

  final String source;
  final FileData? fileData;
  final Color? color;
  final double? size;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final String? placeholder;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;

  @override
  Widget build(final BuildContext context) => Builder(
        builder: (final BuildContext context) {
          if (fileData != null) {
            if (isWeb()) {
              return UImageMemory(
                fileData!.bytes!,
                width: size ?? width,
                height: size ?? height,
                borderRadius: borderRadius,
                color: color,
                fit: fit,
              );
            } else {
              return UImageFile(
                File(fileData!.path!),
                width: size ?? width,
                height: size ?? height,
                borderRadius: borderRadius,
                color: color,
                fit: fit,
              );
            }
          } else if (source.length <= 5) {
            if (placeholder == null) {
              return SizedBox(width: size ?? width, height: size ?? height);
            } else {
              return UImageAsset(
                placeholder!,
                width: size ?? width,
                height: size ?? height,
                borderRadius: borderRadius,
                color: color,
                fit: fit,
              );
            }
          } else {
            if (source.startsWith("http")) {
              return UImageNetwork(
                source,
                width: size ?? width,
                height: size ?? height,
                fit: fit,
                borderRadius: borderRadius,
                color: color,
                progressIndicatorBuilder: progressIndicatorBuilder,
                placeholder: placeholder,
              );
            } else if (source.startsWith("http") && source.endsWith(".json")) {
              return lottie.Lottie.network(source, width: size ?? width, height: size ?? height, fit: fit, repeat: true);
            } else if (source.endsWith(".json")) {
              return lottie.Lottie.asset(source, width: size ?? width, height: size ?? height, fit: fit, repeat: true);
            } else {
              return UImageAsset(
                source,
                width: size ?? width,
                height: size ?? height,
                fit: fit,
                borderRadius: borderRadius,
                color: color,
              );
            }
          }
        },
      );
}

class UIconPrimary extends StatelessWidget {
  const UIconPrimary(
    this.source, {
    super.key,
    this.color,
    this.width,
    this.height,
    this.placeholder,
    this.progressIndicatorBuilder,
    this.fit = BoxFit.contain,
    this.borderRadius = 1,
  });

  final String source;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final String? placeholder;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;

  @override
  Widget build(final BuildContext context) => UImage(
        source,
        color: color,
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
        placeholder: placeholder,
        progressIndicatorBuilder: progressIndicatorBuilder,
      );
}

Widget iconPrimary(
  final String source, {
  final Color? color,
  final double? width,
  final double? height,
  final BoxFit fit = BoxFit.contain,
  final Clip clipBehavior = Clip.hardEdge,
  final double borderRadius = 1,
  final EdgeInsets margin = EdgeInsets.zero,
  final String? placeholder,
  final ProgressIndicatorBuilder? progressIndicatorBuilder,
  final VoidCallback? onTap,
}) =>
    UImage(
      source,
      color: color,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      placeholder: placeholder,
      progressIndicatorBuilder: progressIndicatorBuilder,
    );

class UImageAsset extends StatelessWidget {
  const UImageAsset(
    this.path, {
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.clipBehavior = Clip.hardEdge,
    this.borderRadius = 1,
    super.key,
  });

  final String path;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Clip clipBehavior;
  final double borderRadius;

  @override
  Widget build(final BuildContext context) => path.endsWith("svg")
      ? SvgPicture.asset(
          path,
          width: width,
          height: height,
          fit: fit,
        ).container(radius: borderRadius)
      : Image.asset(
          path,
          color: color,
          width: width,
          height: height,
          fit: fit,
        ).container(radius: borderRadius);
}

class UImageNetwork extends StatelessWidget {
  const UImageNetwork(
    this.url, {
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.clipBehavior = Clip.hardEdge,
    this.borderRadius = 1,
    this.placeholder,
    this.progressIndicatorBuilder,
    super.key,
  });

  final String url;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Clip clipBehavior;
  final double borderRadius;
  final String? placeholder;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;

  @override
  Widget build(final BuildContext context) => Builder(
        builder: (final BuildContext context) => url.length <= 10
            ? placeholder == null
                ? SizedBox(width: width, height: height)
                : UImageAsset(
                    placeholder!,
                    width: width,
                    height: height,
                    color: color,
                    fit: fit,
                    clipBehavior: clipBehavior,
                    borderRadius: borderRadius,
                  )
            : url.substring(url.length - 3) == "svg"
                ? SvgPicture.network(
                    url,
                    width: width,
                    height: height,
                    fit: fit,
                    placeholderBuilder: placeholder == null
                        ? null
                        : (final _) => UImageAsset(
                              placeholder!,
                              width: width,
                              height: height,
                              fit: fit,
                              clipBehavior: clipBehavior,
                              borderRadius: borderRadius,
                            ),
                  )
                : CachedNetworkImage(
                    imageUrl: url,
                    color: color,
                    width: width,
                    height: height,
                    fit: fit,
                    progressIndicatorBuilder: progressIndicatorBuilder,
                    errorWidget: placeholder == null
                        ? null
                        : (final _, final __, final ___) => UImage(
                              placeholder!,
                              color: color,
                              width: width,
                              height: height,
                              fit: fit,
                            ),
                    placeholder: placeholder == null
                        ? null
                        : (final _, final __) => UImage(
                              placeholder!,
                              color: color,
                              width: width,
                              height: height,
                              fit: fit,
                            ),
                  ),
      ).container(radius: borderRadius);
}

class UImageFile extends StatelessWidget {
  const UImageFile(
    this.file, {
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.borderRadius = 1,
    super.key,
  });

  final File file;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;

  @override
  Widget build(final BuildContext context) => Image.file(
        file,
        color: color,
        width: width,
        height: height,
        fit: fit,
      ).container(radius: borderRadius);
}

class UImageMemory extends StatelessWidget {
  const UImageMemory(
    this.file, {
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.borderRadius = 1,
    super.key,
  });

  final Uint8List file;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;

  @override
  Widget build(final BuildContext context) => Image.memory(
        file,
        color: color,
        width: width,
        height: height,
        fit: fit,
      ).container(radius: borderRadius);
}

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({
    required this.result,
    this.size,
    super.key,
  });

  final double? size;
  final Function(String path) result;//

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  Rx<String> imagePath = ''.obs;

  @override
  Widget build(final BuildContext context) => Obx(
        () => Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
          child: UImage(
            placeholder: AppImages.female,
            fileData: FileData(path: imagePath.value,),
            imagePath.value,
            size: widget.size ?? 64,
          ),
        ),
      ).onTap(
        () {
          openPicker(
            enableCropping: true,
            type: FileType.image,
            cropAspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
            action: (final List<File> res) {
              imagePath(res.first.path);
              widget.result(imagePath.value);
            },
          );
        },
      );
}
