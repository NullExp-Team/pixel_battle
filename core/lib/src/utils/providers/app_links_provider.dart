import 'package:app_links/app_links.dart';

import '../../../../core.dart';

part 'app_links_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<Uri> appLinks(AppLinksRef ref) {
  ref.listenSelf((_, next) {
    final uri = next.value;
    if (uri != null) {
      logger.debug('Deep Link - $uri');
    }
  });

  return AppLinks().uriLinkStream;
}
