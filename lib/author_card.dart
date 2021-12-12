import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'theme/custom_theme.dart';

class AuthorCard extends StatefulWidget {
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
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 32,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: CustomTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: CustomTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          IconButton(
            iconSize: 30,
            color: Colors.red[500],
            onPressed: () {
              setState(() {
                const SnackBar snackBar =
                    SnackBar(content: Text("Favorite pressed"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                _isFavorited = !_isFavorited;
              });
            },
            icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
          )
        ],
      ),
    );
  }
}
