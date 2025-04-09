import 'package:quiz_app/app/router/routes/base/app_route.dart';

class RegisterRoute extends AppRoute {
  static const _routeName = "register";
  static const _routePath = "/register";

  const RegisterRoute({required String routePath, required String routeName})
    : super(
        routeName: routeName + _routeName,
        routePath: routePath + _routePath,
      );
}
