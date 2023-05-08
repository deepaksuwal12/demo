import 'package:auto_route/annotations.dart';
import 'package:sanoads/features/account/presentation/pages/account_page.dart';
import 'package:sanoads/features/category/presentation/pages/category_page.dart';
import 'package:sanoads/features/home/presentation/pages/home_page.dart';
import 'package:sanoads/features/main/presentation/pages/main_page.dart';
import 'package:sanoads/features/register/presentation/pages/register_page.dart';

import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/login/presentation/pages/login_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  routes: [
    AdaptiveRoute(page: LoginPage, initial: true),
    AdaptiveRoute(page: RegisterPage),
    AdaptiveRoute(page: MainPage),
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: DashboardPage),
    AdaptiveRoute(page: CategoryPage),
    AdaptiveRoute(page: AccountPage),
  ],
)
class $AppRouter {}
