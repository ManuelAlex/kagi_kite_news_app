import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../core/utils/launch_any_url.dart';
import 'kite_loading_widget.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    super.key,
    required this.domain,
    required this.image,
    required this.imageCaption,
    this.link,
  });

  final String? image, imageCaption, link;
  final String domain;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (image != null && image!.isNotEmpty) ...<Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: GestureDetector(
                      onTap: () => launchAnyUrl(domain),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          domain,
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      onTap: link == null ? null : () => launchAnyUrl(link!),
                      child: CachedNetworkImage(
                        imageUrl: image!,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, progress) => ClipRRect(
                              child: SingleChildScrollView(
                                child: KiteLoadingWidget(
                                  progressValue: progress.progress ?? 0.5,
                                ),
                              ),
                            ),
                        errorWidget:
                            (context, url, error) => const Center(
                              child: Icon(
                                Icons.broken_image,
                                size: 150,
                                color: Colors.grey,
                              ),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ] else
              const Icon(
                Icons.image_not_supported,
                size: 150,
                color: Colors.grey,
              ),

            if (imageCaption != null) ...<Widget>[
              const SizedBox(height: 8),
              Flexible(
                child: Text(
                  imageCaption!,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
