// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

class FacebookAvatar extends StatelessWidget {
  final User user;

  const FacebookAvatar({required this.user});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: CachedNetworkImage(
        width: 50,
        height: 50,
        fit: BoxFit.cover,
        imageUrl: user.imageUrl,
        progressIndicatorBuilder: (context, url, pro) =>
            CircularProgressIndicator(
          value: pro.progress,
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
