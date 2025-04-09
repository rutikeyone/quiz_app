import 'package:quiz_app/app/router/routes/base/app_route.dart';
import 'package:quiz_app/app/router/routes/questions_route.dart';

class CategoriesRoute extends AppRoute {
  static const _routeName = "categories";
  static const _routePath = "/categories";

  late final questions = QuestionsRoute(
    routePath: routePath,
    routeName: routeName,
  );

  CategoriesRoute({required String routePath, required String routeName})
    : super(
        routeName: routeName + _routeName,
        routePath: routePath + _routePath,
      );
}
