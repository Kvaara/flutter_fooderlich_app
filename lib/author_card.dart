import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'theme/custom_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 32,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorName,
                style: CustomTheme.lightTextTheme.headline2,
              ),
              Text(
                title,
                style: CustomTheme.lightTextTheme.headline3,
              )
            ],
          )
        ],
      ),
    );
  }
}
