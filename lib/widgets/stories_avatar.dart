// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  final Story story;

  const StoryAvatar({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (story.isViewed != true) {
      return Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: ClipRRect(
            child: CachedNetworkImage(
                imageUrl: story.user.imageUrl, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(50),
          ));
    } else {
      return Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              border: Border.all(color: Colors.blue.shade800, width: 5)),
          child: ClipRRect(
            child: CachedNetworkImage(
                imageUrl: story.user.imageUrl, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(50),
          ));
    }
  }
}
