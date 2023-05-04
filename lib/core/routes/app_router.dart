import 'package:auto_route/annotations.dart';
import 'package:demo_project/features/register/presentation/pages/register_page.dart';

import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/login/presentation/pages/login_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  routes: [
    AdaptiveRoute(page: LoginPage,initial: true),
    AdaptiveRoute(page: RegisterPage),
    AdaptiveRoute(page: DashboardPage),
  ],
)
class $AppRouter {}
