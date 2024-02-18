/// Generated file. Do not edit.
///
/// Original: packages/core/lib/src/locales
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 25 (12 per locale)
///
/// Built on 2024-02-01 at 16:25 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ru;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ru) // set locale
/// - Locale locale = AppLocale.ru.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ru) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ru(languageCode: 'ru', build: Translations.build),
	en(languageCode: 'en', build: TranslationsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of translations).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = translations.someKey.anotherKey;
Translations get translations => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final translations = Translations.of(context); // Get translations variable.
/// String a = translations.someKey.anotherKey; // Use translations variable.
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.translations.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get translations => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
typedef TranslationsRu = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final translations = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String test({required Object name}) => 'Тест ${name}';
	String get today => 'сегодня';
	String get yesterday => 'вчера';
	String get tomorrow => 'завтра';
	late final TranslationsPillowsReasonRu pillowsReason = TranslationsPillowsReasonRu._(_root);
	String fixValidationErrors({required num errorsCount}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(errorsCount,
		one: 'Исправьте ${errorsCount} ошибку',
		two: 'Исправьте ${errorsCount} ошибки',
		few: 'Исправьте ${errorsCount} ошибки',
		many: 'Исправьте ${errorsCount} ошибок',
		other: 'Исправьте ${errorsCount} ошибок',
	);
	late final TranslationsArticleRu article = TranslationsArticleRu._(_root);
}

// Path: pillowsReason
class TranslationsPillowsReasonRu {
	TranslationsPillowsReasonRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sleep => 'Вознаграждение за ночь';
	String get challenge => 'Челлендж';
	String get referral => 'Вознаграждение за реферала';
	String get purchase => 'Обмен подушек на билеты';
	String get unknown => 'Неизвестно';
}

// Path: article
class TranslationsArticleRu {
	TranslationsArticleRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsArticleQuizRu quiz = TranslationsArticleQuizRu._(_root);
}

// Path: article.quiz
class TranslationsArticleQuizRu {
	TranslationsArticleQuizRu._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get attemptsAreOver => 'Попытки закончились, приходите завтра';
	String remainingAttempts({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		zero: 'У вас ${n} попыток',
		one: 'У вас ${n} попытка',
		two: 'У вас ${n} попытки',
		few: 'У вас ${n} попытки',
		many: 'У вас ${n} попыток',
		other: 'У вас ${n} попыток',
	);
}

// Path: <root>
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override String test({required Object name}) => 'Test ${name}';
	@override String get today => 'today';
	@override String get yesterday => 'yesterday';
	@override String get tomorrow => 'tomorrow';
}
