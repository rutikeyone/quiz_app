import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/go_router_refresh_stream.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/presentation/categories_page.dart';
import 'package:quiz_app/presentation/home_page.dart';
import 'package:quiz_app/presentation/login_page.dart';
import 'package:quiz_app/presentation/profile_page.dart';
import 'package:quiz_app/presentation/questions_page.dart';
import 'package:quiz_app/presentation/register_page.dart';
import 'package:quiz_app/app/router/routes/base/app_screens.dart';
import 'package:quiz_app/presentation/result_page.dart';
import 'package:quiz_app/presentation/results_page.dart';

GoRouter createRouter(AuthService authService) => GoRouter(
  initialLocation: AppScreens.login.routePath,
  refreshListenable: GoRouterRefreshStream(authService.authStatusChanged),
  redirect: (context, state) {
    final fullPath = state.uri.path;
    final isAuthenticated = authService.isAuthenticated;
    final isAuthPath = fullPath.startsWith(AppScreens.login.routePath) == true;

    if (!isAuthenticated && !isAuthPath) {
      return AppScreens.login.routePath;
    } else if (isAuthenticated && isAuthPath) {
      return AppScreens.home.routePath;
    }

    return null;
  },
  routes: [
    GoRoute(
      name: AppScreens.login.routeName,
      path: AppScreens.login.routePath,
      builder: (context, state) {
        return LoginPage(loginRoute: AppScreens.login);
      },
      routes: [
        GoRoute(
          name: AppScreens.login.register.routeName,
          path: AppScreens.login.register.routePath,
          builder: (context, state) {
            return const RegisterPage();
          },
        ),
      ],
    ),
    GoRoute(
      name: AppScreens.home.routeName,
      path: AppScreens.home.routePath,
      builder: (context, state) {
        return HomePage(homeRoute: AppScreens.home);
      },
      routes: [
        GoRoute(
          name: AppScreens.home.profile.routeName,
          path: AppScreens.home.profile.routePath,
          builder: (context, state) {
            return const ProfilePage();
          },
        ),
        GoRoute(
          name: AppScreens.home.categories.routeName,
          path: AppScreens.home.categories.routePath,
          builder: (context, state) {
            return CategoriesPage(categoriesRoute: AppScreens.home.categories);
          },
          routes: [
            GoRoute(
              name: AppScreens.home.results.routeName,
              path: AppScreens.home.results.routePath,
              builder: (context, state) {
                return ResultsPage();
              },
            ),
            GoRoute(
              name: AppScreens.home.categories.questions.routeName,
              path: AppScreens.home.categories.questions.routePath,
              builder: (context, state) {
                final category = AppScreens.home.categories.questions
                    .withCategory(state.uri.queryParameters);

                return QuestionsPage(
                  category: category,
                  questionRoute: AppScreens.home.categories.questions,
                );
              },
              routes: [
                GoRoute(
                  name: AppScreens.home.categories.questions.result.routeName,
                  path: AppScreens.home.categories.questions.result.routePath,
                  builder: (context, state) {
                    final arguments = AppScreens
                        .home
                        .categories
                        .questions
                        .result
                        .withResultArgument(state.uri.queryParameters);

                    return ResultPage(
                      arguments: arguments,
                      homeRoute: AppScreens.home,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
