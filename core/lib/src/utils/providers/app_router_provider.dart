import '../../../core.dart';

part 'app_router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<StackRouter> appRouter(AppRouterRef ref) {
  throw UnimplementedError('Override this appRouter provider in app');
}
