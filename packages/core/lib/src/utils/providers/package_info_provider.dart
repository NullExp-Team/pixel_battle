import '../../../core.dart';

part 'package_info_provider.g.dart';

@Riverpod(keepAlive: true)
Future<PackageInfo> packageInfo(PackageInfoRef ref) async {
  return PackageInfo.fromPlatform();
}
