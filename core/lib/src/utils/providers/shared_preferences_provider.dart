import 'package:shared_preferences/shared_preferences.dart';

import '../../../core.dart';

part 'shared_preferences_provider.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(SharedPreferencesRef ref) =>
    SharedPreferences.getInstance();
