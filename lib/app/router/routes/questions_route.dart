import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/result_route.dart';

import 'base/app_route.dart';

class QuestionsRoute extends AppRoute {
  static const _routeName = "questions";
  static const _routePath = "/questions";

  late final result = ResultRoute(routeName: routeName, routePath: routePath);

  QuestionsRoute({required String routePath, required String routeName})
    : super(
        routeName: routeName + _routeName,
        routePath: routePath + _routePath,
      );

  void push(GoRouter router, {required String category}) {
    final location = router.namedLocation(
      routeName,
      queryParameters: {"category": category},
    );

    router.push(location);
  }

  String withCategory(Map<String, dynamic> queryParameters) {
    return queryParameters["category"];
  }
}
