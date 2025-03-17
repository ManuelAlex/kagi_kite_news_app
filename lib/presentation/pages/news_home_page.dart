import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/results.dart';
import '../../domain/domain.dart';

import '../presentation.dart';

import '../providers/news_category_providers/news_category_provider.dart';
import '../providers/news_category_providers/progress_state_provider.dart';
import '../widgets/_kite_app_bar.dart';

import '../widgets/kite_loading_widget.dart';
import '../widgets/news_category_tab_view.dart';

class NewsHomePage extends ConsumerStatefulWidget {
  const NewsHomePage({super.key});

  @override
  ConsumerState<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends ConsumerState<NewsHomePage> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<Result<NewsCategories>> newsCategoriesAsync = ref.watch(
      newsCategoriesProvider,
    );

    final double progressValue = ref.watch(progressStateProvider);

    return Scaffold(
      appBar: KiteAppBar(newsCategoriesAsync: newsCategoriesAsync),

      body: newsCategoriesAsync.when(
        data: (Result<NewsCategories> result) {
          return switch (result) {
            final Success<NewsCategories> success => NewsCategoriesTabView(
              success.data,
            ),
            final Failure<NewsCategories> failure => ErrorBlock(
              failure.message,
              null,
            ),
            _ => const ErrorBlock('Unknown error', null),
          };
        },
        error: ErrorBlock.new,
        loading:
            () =>
                Center(child: KiteLoadingWidget(progressValue: progressValue)),
      ),
    );
  }
}
