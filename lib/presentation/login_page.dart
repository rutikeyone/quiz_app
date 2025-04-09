import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/login_route.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class LoginPage extends StatefulWidget {
  final LoginRoute loginRoute;

  const LoginPage({required this.loginRoute, super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginRoute get loginRoute => widget.loginRoute;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formState = GlobalKey<FormState>();

  Future<void> _login() async {
    final appProvider = AppProvider.of(context);
    final isValidate = _formState.currentState?.validate() ?? false;

    if (isValidate) {
      final email = _emailController.text;
      final password = _passwordController.text;

      try {
        await appProvider.authService.signInWithEmailAndPassword(
          email,
          password,
        );
      } on FirebaseAuthException catch (e) {
        appProvider.snackBarDispatcher(e.message ?? '');
      } catch (e) {
        appProvider.snackBarDispatcher(e.toString());
      }
    }
  }

  void _navigateToRegister() {
    context.pushNamed(loginRoute.register.routeName);
  }

  String? _emailValidator(String? value) {
    return value!.isEmpty ? S.of(context).cannot_be_empty : null;
  }

  String? _passwordValidator(String? value) {
    return value!.isEmpty ? S.of(context).cannot_be_empty : null;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formState,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                S.of(context).authorization,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: S.of(context).email,
                    border: OutlineInputBorder(),
                  ),
                  validator: _emailValidator,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: S.of(context).password,
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: _passwordValidator,
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 196,
                child: ElevatedButton(
                  onPressed: _login,
                  child: Text(S.of(context).login),
                ),
              ),
              TextButton(
                onPressed: _navigateToRegister,
                child: Text(S.of(context).register),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
