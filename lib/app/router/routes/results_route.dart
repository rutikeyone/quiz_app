import 'package:quiz_app/app/router/routes/base/app_route.dart';

class ResultsRoute extends AppRoute {
  static const _routeName = "results";
  static const _routePath = "/results";

  ResultsRoute({required String routePath, required String routeName})
    : super(
        routeName: routeName + _routeName,
        routePath: routePath + _routePath,
      );
}
