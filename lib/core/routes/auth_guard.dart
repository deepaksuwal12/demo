import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    resolver.next(true);
    return;
  }
}
