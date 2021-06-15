import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/padding.dart';
import 'package:facebook_clone/widgets/post_header.dart';
import 'package:facebook_clone/widgets/post_image.dart';
import 'package:facebook_clone/widgets/post_statics.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> postsList = posts.map<Widget>((post) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(post: post),
            SizedBox(height: 20),
            Text(
              post.caption,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            PostImage(post: post),
            PostStatics(post: post),
            SizedBox(height: 20),
            ColoredPaddingCustom()
          ],
        ),
      );
    }).toList();

    return SliverToBoxAdapter(
      child: Column(children: postsList),
    );
  }
}
