// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(param) => "Create new ${param}";

  static String m1(param) => "Update ${param}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Jadoo"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "categories": MessageLookupByLibrary.simpleMessage("Categories"),
        "createParam": m0,
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "detail": MessageLookupByLibrary.simpleMessage("Detail"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "followLimit": MessageLookupByLibrary.simpleMessage("Follow limit"),
        "followLimitMessage": MessageLookupByLibrary.simpleMessage(
            "To increase the limit, you need to activate a business account"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "posts": MessageLookupByLibrary.simpleMessage("Posts"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "report": MessageLookupByLibrary.simpleMessage("Report"),
        "reportSentSuccessfully":
            MessageLookupByLibrary.simpleMessage("Report sent successfully"),
        "scam": MessageLookupByLibrary.simpleMessage("Scam"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateParam": m1,
        "userNameOrPasswordIsWrong": MessageLookupByLibrary.simpleMessage(
            "Username or password is wrong"),
        "users": MessageLookupByLibrary.simpleMessage("Users"),
        "version": MessageLookupByLibrary.simpleMessage("Version"),
        "viewAll": MessageLookupByLibrary.simpleMessage("View all"),
        "violationOfRules":
            MessageLookupByLibrary.simpleMessage("Violation of the rules"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
