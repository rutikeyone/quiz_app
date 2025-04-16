import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/home_route.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class HomePage extends StatelessWidget {
  final HomeRoute homeRoute;

  const HomePage({required this.homeRoute, super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = AppProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).main)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 196,
              child: ElevatedButton(
                onPressed:
                    () => context.pushNamed(homeRoute.categories.routeName),
                child: Text(S.of(context).start),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: 196,
                child: ElevatedButton(
                  onPressed:
                      () => context.pushNamed(homeRoute.profile.routeName),
                  child: Text(S.of(context).profile),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: 196,
                child: ElevatedButton(
                  onPressed:
                      () => context.pushNamed(homeRoute.results.routeName),
                  child: Text(S.of(context).results),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: 196,
                child: ElevatedButton(
                  onPressed: appProvider.authService.signOut,
                  child: Text(S.of(context).logout),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
