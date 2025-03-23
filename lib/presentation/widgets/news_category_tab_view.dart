import 'package:flutter/material.dart';

import '../../domain/domain.dart';
import 'category_details_view.dart';

class NewsCategoriesTabView extends StatelessWidget {
  const NewsCategoriesTabView(this.newsCategories, {super.key});

  final NewsCategories newsCategories;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: newsCategories.categories.length,
      child: Column(
        children: <Widget>[
          TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey[700],
            indicatorColor: const Color(0xFFDAA520),
            isScrollable: true,
            tabs:
                newsCategories.categories
                    .map(
                      (Category category) => Tab(
                        key: const Key('tabButton'),
                        text:
                            category.name == 'OnThisDay'
                                ? 'Today in History'
                                : category.name,
                      ),
                    )
                    .toList(),
          ),
          Expanded(
            child: TabBarView(
              children:
                  newsCategories.categories
                      .map(CategoryDetailsView.new)
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
