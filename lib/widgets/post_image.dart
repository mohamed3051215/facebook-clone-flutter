// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final Post post;

  const PostImage({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (post.imageUrl != null) {
      return Container(
          width: size.width,
          height: 400,
          child: CachedNetworkImage(
            imageUrl: post.imageUrl,
            progressIndicatorBuilder: (context, url, pro) =>
                CircularProgressIndicator(
              value: pro.progress,
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ));
    } else
      return Container(
        height: 0,
      );
  }
}
