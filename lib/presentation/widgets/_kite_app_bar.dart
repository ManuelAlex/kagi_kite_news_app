import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';
import '../../core/utils/date_time_format.dart';
import '../../domain/domain.dart';
import '../providers/news_category_providers/force_refresh_provider.dart';
import '../providers/news_category_providers/news_category_provider.dart';
import '../providers/news_category_providers/progress_state_provider.dart';
import 'animated_kite_logo.dart';

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
  bool get shouldAnimateOnRefresh => _shouldAnimateOnRefresh;
  set shouldAnimateOnRefresh(value) => setState(() {
    _shouldAnimateOnRefresh = value;
  });

  @override
  Widget build(BuildContext context) {
    final ProgressState progressNotifier = ref.read(
      progressStateProvider.notifier,
    );

    final bool dataSuccess =
        widget.newsCategoriesAsync.hasValue &&
        widget.newsCategoriesAsync.value is Success<NewsCategories>;
    final String timestampText =
        dataSuccess
            ? ((widget.newsCategoriesAsync.value ?? false)
                    as Success<NewsCategories>)
                .data
                .timestamp
                .formatAsWeekdayMonthDay()
            : DateTime.now().toUtc().formatAsWeekdayMonthDay();
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
          const Spacer(flex: 2),
          Text(timestampText, style: Theme.of(context).textTheme.titleMedium),
          const Spacer(flex: 5),
          IconButton(
            onPressed: dataSuccess ? () {} : null,
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
