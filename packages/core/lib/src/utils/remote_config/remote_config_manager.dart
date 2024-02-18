import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../../../../core.dart';

part 'remote_config_manager.freezed.dart';
part 'remote_config_manager.g.dart';

@freezed
class RemoteConfigManagerState with _$RemoteConfigManagerState {
  const factory RemoteConfigManagerState({
    required String baseUrl,
  }) = _RemoteConfigManagerState;
}

@Riverpod(keepAlive: true)
class RemoteConfigManager extends _$RemoteConfigManager with ControllerMixin {
  RemoteConfigManager();

  late final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  @override
  RemoteConfigManagerState build() {
    return _collectState();
  }

  Future<void> init() async {
    await apiWrap(
      _remoteConfig.fetchAndActivate,
      onSuccess: (_) {
        state = _collectState();
      },
    );
  }

  Future<void> fetch() async {
    await apiWrap(
      _remoteConfig.fetch,
      onSuccess: (_) {
        state = _collectState();
      },
    );
  }

  String? _getString(String key) {
    final str = _remoteConfig.getString(key);
    return str.isNotEmpty ? str : null;
  }

  RemoteConfigManagerState _collectState() {
    return RemoteConfigManagerState(
      baseUrl: _getString('base_url') ?? 'base_url',
    );
  }
}
