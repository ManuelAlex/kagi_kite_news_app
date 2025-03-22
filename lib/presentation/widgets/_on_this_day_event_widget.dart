import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/utils/event_content.dart';
import '../../domain/domain.dart';

class OnThisDayEventWidget extends StatelessWidget {
  const OnThisDayEventWidget({super.key, required this.events});
  final List<OnThisDayEvent> events;

  @override
  Widget build(BuildContext context) {
    final List<OnThisDayEvent> eventEvents =
        events.where((OnThisDayEvent event) => event.type == 'event').toList();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Events',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Column(
              children:
                  eventEvents.map<Widget>((OnThisDayEvent event) {
                    final EventContent eventContent =
                        EventContent.extractEventContent(event.content);
                    return _EventItem(
                      isLast:
                          eventEvents.indexOf(event) == eventEvents.length - 1,
                      year: event.year,
                      title: eventContent.titleAndLink?.$1 ?? '',
                      description: eventContent.contentData.$1,
                      eventContent: eventContent,
                    );
                  }).toList(),
            ),

            const SizedBox(height: 20),

            Text(
              'People',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            SizedBox(height: 240, child: _PeoplsPageView(events: events)),
          ],
        ),
      ),
    );
  }
}

class _PeoplsPageView extends StatefulWidget {
  const _PeoplsPageView({required this.events});

  final List<OnThisDayEvent> events;

  @override
  State<_PeoplsPageView> createState() => _PeoplsPageViewState();
}

class _PeoplsPageViewState extends State<_PeoplsPageView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<OnThisDayEvent> peoplesEvent =
        widget.events
            .where((OnThisDayEvent event) => event.type == 'people')
            .toList();
    const int pageViewCount = 2;
    final int totalPages = (peoplesEvent.length / pageViewCount).ceil();

    return Column(
      children: <Widget>[
        Expanded(
          child: PageView.builder(
            onPageChanged: (int value) {
              setState(() {
                _currentIndex = value;
              });
            },
            itemCount: totalPages,
            itemBuilder: (BuildContext context, int index) {
              final int start = index * pageViewCount;
              final int end = (start + pageViewCount).clamp(
                0,
                peoplesEvent.length,
              );
              final List<OnThisDayEvent> currentPageEvents = peoplesEvent
                  .sublist(start, end);

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(pageViewCount, (int i) {
                  if (i < currentPageEvents.length) {
                    final OnThisDayEvent event = currentPageEvents[i];
                    final EventContent eventContent =
                        EventContent.extractEventContent(event.content);

                    return Expanded(
                      child: FutureBuilder<(String?, String?)?>(
                        future: eventContent.fetchData(),
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<(String?, String?)?> snapshot,
                        ) {
                          if (snapshot.connectionState ==
                                  ConnectionState.waiting ||
                              snapshot.hasError ||
                              !snapshot.hasData) {
                            return _EventPeople(
                              year: event.year,
                              name: eventContent.titleAndLink?.$1 ?? '',
                              imageUrl: '',
                              description: eventContent.contentData.$1,
                              eventContent: eventContent,
                              isLast: i == pageViewCount - 1,
                            );
                          }

                          return _EventPeople(
                            year: event.year,
                            name: eventContent.titleAndLink?.$1 ?? '',
                            imageUrl: snapshot.data?.$1 ?? '',
                            description: eventContent.contentData.$1,
                            eventContent: eventContent,
                            isLast: i == pageViewCount - 1,
                          );
                        },
                      ),
                    );
                  }
                  return const Expanded(child: SizedBox());
                }),
              );
            },
          ),
        ),
        const SizedBox(height: 4),
        CircularIndicatorView(
          childrenLength: totalPages,
          selectedIndex: _currentIndex,
        ),
      ],
    );
  }
}

class CircularIndicatorView extends StatelessWidget {
  const CircularIndicatorView({
    super.key,
    required this.childrenLength,
    required this.selectedIndex,
  });
  final int childrenLength;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(childrenLength, (int index) {
        return CircularIndicator(
          color: selectedIndex == index ? Colors.blueAccent : Colors.black12,
        );
      }),
    );
  }
}

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 8,
        width: 8,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}

class _EventPeople extends StatefulWidget {
  const _EventPeople({
    required this.year,
    required this.name,
    required this.description,
    required this.eventContent,
    required this.imageUrl,
    this.isLast = false,
  });

  final String year, name, description, imageUrl;
  final bool isLast;
  final EventContent eventContent;

  @override
  State<_EventPeople> createState() => _EventPeopleState();
}

class _EventPeopleState extends State<_EventPeople> {
  final MenuController menuController = MenuController();
  (String?, String?)? menuContent;

  Future<void> _showMenu() async {
    final (String?, String?)? data = await widget.eventContent.fetchData();
    setState(() {
      menuContent = data;
    });
    menuController.open();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.year,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: CachedNetworkImage(
                        height: 30,
                        width: 30,
                        imageUrl: widget.imageUrl,
                        fit: BoxFit.cover,
                        errorWidget:
                            (BuildContext context, String url, Object error) =>
                                const Icon(Icons.broken_image, size: 30),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MenuAnchor(
                          controller: menuController,
                          menuChildren:
                              menuContent != null
                                  ? <Widget>[
                                    _MenuChildren(menuContent: menuContent),
                                  ]
                                  : <Widget>[],
                          child: InkWell(
                            onTap: _showMenu,
                            child: Text(
                              widget.name,
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.description,
                          style: Theme.of(context).textTheme.bodySmall,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        VerticalDivider(
          color: widget.isLast ? Colors.transparent : Colors.blueAccent,
          thickness: 1.0,
          endIndent: 8,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}

class _MenuChildren extends StatelessWidget {
  const _MenuChildren({required this.menuContent});

  final (String?, String?)? menuContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: menuContent?.$1 ?? '',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                errorWidget:
                    (BuildContext context, String url, Object error) =>
                        const Icon(Icons.broken_image, size: 30),
              ),
              const SizedBox(height: 8),
              Text(
                menuContent!.$2 ?? '',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EventItem extends StatefulWidget {
  const _EventItem({
    required this.year,
    required this.title,
    required this.description,
    required this.eventContent,
    this.isLast = false,
  });

  final String year;
  final String title;
  final String description;
  final bool isLast;
  final EventContent eventContent;

  @override
  State<_EventItem> createState() => _EventItemState();
}

class _EventItemState extends State<_EventItem> {
  final MenuController menuController = MenuController();
  (String?, String?)? menuContent;

  Future<void> _showMenu(BuildContext context) async {
    final data = await widget.eventContent.fetchData();
    setState(() {
      menuContent = data;
    });

    // Ensure the menu is opened only after updating menuContent
    menuController.open();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: VerticalDivider(
                  color: widget.isLast ? Colors.transparent : Colors.blueAccent,
                  thickness: 1.5,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.year,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 16),

                  Expanded(
                    child: MenuAnchor(
                      controller: menuController, // ✅ Add controller
                      menuChildren:
                          menuContent != null
                              ? <Widget>[
                                _MenuChildren(menuContent: menuContent),
                              ]
                              : <Widget>[],
                      child: InkWell(
                        onTap: () => _showMenu(context), // ✅ Pass context
                        child: Text(
                          widget.description,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
