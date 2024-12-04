// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fa locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'fa';

  static String m0(param) => "ساخت ${param} جدید";

  static String m1(param) => "بروز رسانی ${param}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("جادو"),
        "cancel": MessageLookupByLibrary.simpleMessage("انصراف"),
        "categories": MessageLookupByLibrary.simpleMessage("دسته بندی ها"),
        "createParam": m0,
        "delete": MessageLookupByLibrary.simpleMessage("حذف"),
        "detail": MessageLookupByLibrary.simpleMessage("مشخصات"),
        "edit": MessageLookupByLibrary.simpleMessage("ویرایش"),
        "error": MessageLookupByLibrary.simpleMessage("خطا"),
        "followLimit":
            MessageLookupByLibrary.simpleMessage("محدودیت دنبال کردن"),
        "followLimitMessage": MessageLookupByLibrary.simpleMessage(
            "برای ارتقا محدودیت لازم است اکانت تجاری فعال کنید"),
        "home": MessageLookupByLibrary.simpleMessage("خانه"),
        "login": MessageLookupByLibrary.simpleMessage("ورود"),
        "no": MessageLookupByLibrary.simpleMessage("خیر"),
        "other": MessageLookupByLibrary.simpleMessage("سایر"),
        "posts": MessageLookupByLibrary.simpleMessage("پست ها"),
        "profile": MessageLookupByLibrary.simpleMessage("مشخصات کاربری"),
        "report": MessageLookupByLibrary.simpleMessage("گزارش تخلف"),
        "reportSentSuccessfully":
            MessageLookupByLibrary.simpleMessage("گزارش با موفقیت ارسال شد"),
        "scam": MessageLookupByLibrary.simpleMessage("کلاهبرداری"),
        "update": MessageLookupByLibrary.simpleMessage("برئز رسانی"),
        "updateParam": m1,
        "userNameOrPasswordIsWrong": MessageLookupByLibrary.simpleMessage(
            "نام کاربری یا رمز عبور اشتباه است"),
        "users": MessageLookupByLibrary.simpleMessage("کاربران"),
        "version": MessageLookupByLibrary.simpleMessage("ورژن"),
        "viewAll": MessageLookupByLibrary.simpleMessage("مشاهده همه"),
        "violationOfRules": MessageLookupByLibrary.simpleMessage("نقض قوانین"),
        "warning": MessageLookupByLibrary.simpleMessage("اخطار"),
        "yes": MessageLookupByLibrary.simpleMessage("بله")
      };
}
