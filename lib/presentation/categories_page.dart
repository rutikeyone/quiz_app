import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/categories_route.dart';
import 'package:quiz_app/domain/models/model.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class CategoriesPage extends StatefulWidget {
  final CategoriesRoute categoriesRoute;

  const CategoriesPage({required this.categoriesRoute, super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<Category> _categories = <Category>[];
  bool _isLoading = true;

  Future<void> _fetchCategories() async {
    final appProvider = AppProvider.of(context);
    try {
      _updateLoadingState(true);
      final categories = await appProvider.quizService.fetchCategories();

      setState(() {
        _categories = categories;
        _isLoading = false;
      });
    } catch (e) {
      appProvider.snackBarDispatcher(e.toString());
    }
  }

  void _updateLoadingState(bool value) {
    setState(() {
      _isLoading = value;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).select_category)),
      body:
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                separatorBuilder: (context, index) => Divider(height: 1),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final item = _categories[index];

                  return ListTile(
                    onTap:
                        () => widget.categoriesRoute.questions.push(
                          router,
                          category: item.name,
                        ),
                    title: Text(item.id.toString()),
                    subtitle: Text(item.name),
                  );
                },
              ),
    );
  }
}
