// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(value) => "Категория: ${value}";

  static String m1(value) => "Количество верных ответов: ${value}";

  static String m2(firstValue, secondValue) =>
      "Вопрос ${firstValue}/${secondValue}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "authorization": MessageLookupByLibrary.simpleMessage("Авторизация"),
    "back": MessageLookupByLibrary.simpleMessage("Назад"),
    "cannot_be_empty": MessageLookupByLibrary.simpleMessage(
      "Значение не может быть пустым",
    ),
    "category": m0,
    "count_correct_answers": m1,
    "email": MessageLookupByLibrary.simpleMessage("Почта"),
    "go_back": MessageLookupByLibrary.simpleMessage("Вернуться назад"),
    "login": MessageLookupByLibrary.simpleMessage("Войти"),
    "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
    "main": MessageLookupByLibrary.simpleMessage("Главная"),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
    "question": m2,
    "register": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
    "result_was_saved_successfully": MessageLookupByLibrary.simpleMessage(
      "Результат успешно сохранен",
    ),
    "results": MessageLookupByLibrary.simpleMessage("Результаты"),
    "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
    "select_category": MessageLookupByLibrary.simpleMessage(
      "Выберите категорию",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Начать"),
  };
}
