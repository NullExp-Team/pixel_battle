import 'package:core/core.dart';
import '../../../shared.dart';

part 'app_repository.g.dart';

@Riverpod()
class AppRepository extends _$AppRepository with ControllerMixin {
  @override
  void build() {}

  Future<AuthResponse> auth() async {}
}
