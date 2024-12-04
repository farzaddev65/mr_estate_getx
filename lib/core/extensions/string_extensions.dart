part of 'extensions.dart';

extension StringExtensions on String {
  String moneyFormat() => this;
}

extension StringNullExtensions on String? {
  bool get isNullOrEmpty => this == null || this! == '';
}
