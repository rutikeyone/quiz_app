import 'package:flutter/material.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userStream = AppProvider.of(context).authService.userStream;

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).profile)),
      body: Center(
        child: StreamBuilder(
          stream: userStream,
          builder: (context, snapshot) {
            final user = snapshot.data;
            final uid = user?.uid;
            final email = user?.email;
            final isAnonymous = user?.isAnonymous.toString();

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (uid != null)
                  Text(uid, style: Theme.of(context).textTheme.titleLarge),
                if (email != null)
                  Text(email, style: Theme.of(context).textTheme.titleMedium),
                if (isAnonymous != null)
                  Text(
                    isAnonymous,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
