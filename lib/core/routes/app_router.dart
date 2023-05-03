import 'package:auto_route/annotations.dart';

import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/login/presentation/pages/login_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  routes: [
    AdaptiveRoute(page: LoginPage,initial: true),
    AdaptiveRoute(page: DashboardPage),
  ],
)
class $AppRouter {}
