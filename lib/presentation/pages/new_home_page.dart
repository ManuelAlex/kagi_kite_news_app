import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/results.dart';
import '../../domain/entities/news_categories.dart';
import '../../domain/entities/value_objects/category.dart';
import '../providers/news_category_providers/news_category_provider.dart';
import '../widgets/error_block.dart';

class NewHomePage extends ConsumerWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Result<NewsCategories>> newsCategoriesAsync = ref.watch(
      newsCategoriesProvider,
    );

    return Scaffold(
      body: newsCategoriesAsync.when(
        data: (Result<NewsCategories> result) {
          return switch (result) {
            final Success<NewsCategories> success => NewsCategoriesList(
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
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class NewsCategoriesList extends StatelessWidget {
  const NewsCategoriesList(this.newsCategories, {super.key});

  final NewsCategories newsCategories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsCategories.categories.length,
      itemBuilder: (BuildContext context, int index) {
        final Category category = newsCategories.categories[index];
        return ListTile(title: Text(category.name));
      },
    );
  }
}
