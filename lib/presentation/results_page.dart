import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/domain/models/model.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  List<Result> _results = <Result>[];
  bool _isLoading = true;

  Future<void> _fetchResults() async {
    final appProvider = AppProvider.of(context);
    try {
      _updateLoadingState(true);
      final results = await appProvider.quizService.fetchResults();

      setState(() {
        _results = results;
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
    _fetchResults();
  }

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).results)),
      body:
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                separatorBuilder: (context, index) => Divider(height: 1),
                itemCount: _results.length,
                itemBuilder: (context, index) {
                  final item = _results[index];

                  return ListTile(
                    title: Text(item.category),
                    subtitle: Text(item.count),
                  );
                },
              ),
    );
  }
}
