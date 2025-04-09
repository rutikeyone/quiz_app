// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Авторизация`
  String get authorization {
    return Intl.message(
      'Авторизация',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get email {
    return Intl.message('Почта', name: 'email', desc: '', args: []);
  }

  /// `Зарегистрироваться`
  String get register {
    return Intl.message(
      'Зарегистрироваться',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get login {
    return Intl.message('Войти', name: 'login', desc: '', args: []);
  }

  /// `Значение не может быть пустым`
  String get cannot_be_empty {
    return Intl.message(
      'Значение не может быть пустым',
      name: 'cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
  }

  /// `Назад`
  String get back {
    return Intl.message('Назад', name: 'back', desc: '', args: []);
  }

  /// `Главная`
  String get main {
    return Intl.message('Главная', name: 'main', desc: '', args: []);
  }

  /// `Начать`
  String get start {
    return Intl.message('Начать', name: 'start', desc: '', args: []);
  }

  /// `Выйти`
  String get logout {
    return Intl.message('Выйти', name: 'logout', desc: '', args: []);
  }

  /// `Профиль`
  String get profile {
    return Intl.message('Профиль', name: 'profile', desc: '', args: []);
  }

  /// `Выберите категорию`
  String get select_category {
    return Intl.message(
      'Выберите категорию',
      name: 'select_category',
      desc: '',
      args: [],
    );
  }

  /// `Вопрос {firstValue}/{secondValue}`
  String question(Object firstValue, Object secondValue) {
    return Intl.message(
      'Вопрос $firstValue/$secondValue',
      name: 'question',
      desc: '',
      args: [firstValue, secondValue],
    );
  }

  /// `Результаты`
  String get results {
    return Intl.message('Результаты', name: 'results', desc: '', args: []);
  }

  /// `Вернуться назад`
  String get go_back {
    return Intl.message('Вернуться назад', name: 'go_back', desc: '', args: []);
  }

  /// `Количество верных ответов: {value}`
  String count_correct_answers(Object value) {
    return Intl.message(
      'Количество верных ответов: $value',
      name: 'count_correct_answers',
      desc: '',
      args: [value],
    );
  }

  /// `Категория: {value}`
  String category(Object value) {
    return Intl.message(
      'Категория: $value',
      name: 'category',
      desc: '',
      args: [value],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'ru')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
