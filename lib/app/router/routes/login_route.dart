import 'package:quiz_app/app/router/routes/base/app_route.dart';
import 'package:quiz_app/app/router/routes/register_route.dart';

class LoginRoute extends AppRoute {
  static const String _routeName = "login";
  static const String _routePath = "/login";

  late final register = RegisterRoute(
    routePath: routePath,
    routeName: routeName,
  );

  LoginRoute() : super(routeName: _routeName, routePath: _routePath);
}
