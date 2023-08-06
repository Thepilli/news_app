import 'package:daily_news/config/theme/app_theme.dart';
import 'package:daily_news/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:daily_news/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:daily_news/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:daily_news/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const getArticles()),
      child: MaterialApp(
        title: 'Daily news',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const DailyNews(),
      ),
    );
  }
}
