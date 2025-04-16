import 'package:quiz_app/app/router/routes/base/app_route.dart';
import 'package:quiz_app/app/router/routes/categories_route.dart';
import 'package:quiz_app/app/router/routes/profile_route.dart';
import 'package:quiz_app/app/router/routes/result_route.dart';

class HomeRoute extends AppRoute {
  static const _routePath = "/home";
  static const _routeName = "home";

  late final profile = ProfileRoute(routePath: routePath, routeName: routeName);
  late final categories = CategoriesRoute(
    routePath: routePath,
    routeName: routeName,
  );
  late final results = ResultRoute(routePath: routePath, routeName: routeName);

  HomeRoute() : super(routeName: _routeName, routePath: _routePath);
}
