import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formState = GlobalKey<FormState>();

  String? _emailValidator(String? value) {
    return value!.isEmpty ? S.of(context).cannot_be_empty : null;
  }

  String? _passwordValidator(String? value) {
    return value!.isEmpty ? S.of(context).cannot_be_empty : null;
  }

  Future<void> _register() async {
    final appProvider = AppProvider.of(context);
    final isValidate = _formState.currentState?.validate() ?? false;

    if (isValidate) {
      final email = _emailController.text;
      final password = _passwordController.text;

      try {
        await appProvider.authService.registerWithEmailAndPassword(
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).register)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formState,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: S.of(context).email,
                  border: OutlineInputBorder(),
                ),
                validator: _emailValidator,
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _register,
                child: Text(S.of(context).register),
              ),
              TextButton(
                onPressed: context.pop,
                child: Text(S.of(context).back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
