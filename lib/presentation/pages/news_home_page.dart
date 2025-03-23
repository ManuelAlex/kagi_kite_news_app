import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/results.dart';
import '../../domain/domain.dart';

import '../presentation.dart';

import '../providers/news_category_providers/news_category_provider.dart';
import '../providers/news_category_providers/progress_state_provider.dart';
import '../widgets/kite_app_bar.dart';

import '../widgets/kite_loading_widget.dart';
import '../widgets/news_category_tab_view.dart';

class NewsHomePage extends ConsumerStatefulWidget {
  const NewsHomePage({super.key});

  @override
  ConsumerState<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends ConsumerState<NewsHomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(progressStateProvider.notifier).start();
    });
  }

  void _handleDataLoad(AsyncValue<Result<NewsCategories>> newsCategoriesAsync) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      newsCategoriesAsync.whenOrNull(
        data: (_) => ref.read(progressStateProvider.notifier).complete(),
        error: (_, __) => ref.read(progressStateProvider.notifier).complete(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Result<NewsCategories>> newsCategoriesAsync = ref.watch(
      newsCategoriesProvider,
    );
    final double progressValue = ref.watch(progressStateProvider);

    // Trigger progress updates outside build phase
    _handleDataLoad(newsCategoriesAsync);

    return Scaffold(
      appBar: KiteAppBar(newsCategoriesAsync: newsCategoriesAsync),
      body: newsCategoriesAsync.when(
        loading:
            () =>
                Center(child: KiteLoadingWidget(progressValue: progressValue)),
        data:
            (Result<NewsCategories> result) => switch (result) {
              final Success<NewsCategories> success => NewsCategoriesTabView(
                success.data,
              ),
              final Failure<NewsCategories> failure => ErrorBlock(
                failure.message,
                null,
              ),
              _ => const ErrorBlock('Unknown error', null),
            },
        error: ErrorBlock.new,
      ),
    );
  }
}
