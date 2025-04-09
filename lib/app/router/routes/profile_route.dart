import 'package:quiz_app/app/router/routes/base/app_route.dart';

class ProfileRoute extends AppRoute {
  static const _routeName = "profile";
  static const _routePath = "/profile";

  const ProfileRoute({required String routePath, required String routeName})
    : super(
        routeName: routeName + _routeName,
        routePath: routePath + _routePath,
      );
}
