import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final Post post;

  const PostHeader({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      FacebookAvatar(user: post.user),
      SizedBox(width: 8),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.user.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text(
                  post.timeAgo + " • ",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.public, size: 20, color: Colors.grey)
              ],
            )
          ],
        ),
      ),
      IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
    ]);
  }
}
