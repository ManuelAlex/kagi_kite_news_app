import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';
import '../../core/utils/date_time_format.dart';
import '../../domain/domain.dart';
import '../providers/news_category_providers/force_refresh_provider.dart';
import '../providers/news_category_providers/news_category_provider.dart';
import '../providers/news_category_providers/progress_state_provider.dart';
import '_animated_kite_logo.dart';

enum NewsInfo { newsDate, lastUpdated, totalRead, newsAsWeekDay }

class KiteAppBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const KiteAppBar({super.key, required this.newsCategoriesAsync});

  final AsyncValue<Result<NewsCategories>> newsCategoriesAsync;

  @override
  ConsumerState<KiteAppBar> createState() => _KiteAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _KiteAppBarState extends ConsumerState<KiteAppBar> {
  bool _shouldAnimateOnRefresh = false;
  NewsInfo _currentInfo = NewsInfo.newsDate;

  bool get shouldAnimateOnRefresh => _shouldAnimateOnRefresh;
  set shouldAnimateOnRefresh(bool value) => setState(() {
    _shouldAnimateOnRefresh = value;
  });

  NewsInfo get currentInfo => _currentInfo;
  set currentInfo(NewsInfo value) => setState(() {
    _currentInfo = value;
  });

  void toggleInfo() {
    setState(() {
      currentInfo =
          NewsInfo.values[(_currentInfo.index + 1) % NewsInfo.values.length];
    });
  }

  @override
  Widget build(BuildContext context) {
    final ProgressState progressNotifier = ref.read(
      progressStateProvider.notifier,
    );
    final bool hasData =
        widget.newsCategoriesAsync.hasValue &&
        widget.newsCategoriesAsync.value is Success<NewsCategories>;

    final DateTime now = DateTime.now().toUtc();

    final NewsCategories? newsCategories =
        hasData
            ? (widget.newsCategoriesAsync.value! as Success<NewsCategories>)
                .data
            : null;

    final String formattedNewsDate =
        newsCategories?.timestamp.formatAsWeekdayMonthDay() ??
        now.formatAsWeekdayMonthDay();

    final String formattedWeekAndDay =
        newsCategories?.timestamp.formatAsWeekAndDay() ??
        now.formatAsWeekAndDay();

    final String formattedLastUpdated =
        newsCategories?.timestamp.notificationTime() ?? now.notificationTime();

    const int totalRead = 42;

    final String currentInfoText = switch (_currentInfo) {
      NewsInfo.newsDate => formattedNewsDate,
      NewsInfo.newsAsWeekDay => formattedWeekAndDay,
      NewsInfo.lastUpdated => 'updated $formattedLastUpdated',
      NewsInfo.totalRead => switch (totalRead) {
        0 => "You've read no stories",
        1 => "You've read 1 story",
        _ =>
          "You've read $totalRead stories", // This will only get the last current story after th last refresh
        // as we are not using a stream, althogh the implementation is same with the website
        // you will need to refresh with the kite logo icon to get the latest read total.
      },
    };

    return AppBar(
      title: Row(
        children: <Widget>[
          AnimatedKiteLogo(
            shouldAnimateOnRefresh: shouldAnimateOnRefresh,
            onRefresh: () async {
              shouldAnimateOnRefresh = true;
              progressNotifier.start();
              ref.invalidate(newsCategoriesProvider);
              ref.read(forceRefreshProvider.notifier).triggerRefresh();
              await ref.read(newsCategoriesProvider.future);
              progressNotifier.complete();
              shouldAnimateOnRefresh = false;
            },
          ),
          // const Spacer(flex: 2),
          Expanded(
            child: GestureDetector(
              onTap: toggleInfo,
              child: Center(
                child: Text(
                  currentInfoText,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
          // const Spacer(flex: 5),
          IconButton(
            onPressed: hasData ? () {} : null,
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
