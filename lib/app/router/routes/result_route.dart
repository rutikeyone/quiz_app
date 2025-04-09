import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/arguments/arguments.dart';
import 'package:quiz_app/app/router/routes/base/app_route.dart';

class ResultRoute extends AppRoute {
  static const _routeName = "result";
  static const _routePath = "/result";

  const ResultRoute({required String routePath, required String routeName})
    : super(
        routeName: routeName + _routeName,
        routePath: routePath + _routePath,
      );

  void push(
    GoRouter router, {
    required String category,
    required String countCorrectAnswers,
  }) {
    final arguments = ResultArgument(
      category: category,
      correctAnswers: countCorrectAnswers,
    );
    final location = router.namedLocation(
      routeName,
      queryParameters: arguments.toJson(),
    );

    router.push(location);
  }

  ResultArgument withResultArgument(Map<String, dynamic> queryParameters) {
    return ResultArgument.fromJson(queryParameters);
  }
}
