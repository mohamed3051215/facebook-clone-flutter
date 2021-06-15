import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostStatics extends StatelessWidget {
  final Post post;

  const PostStatics({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Icon(Icons.thumb_up, color: Colors.blue),
              Text(post.likes.toString()),
            ],
          ),
          Text("${post.comments} Comments ${post.shares} Shares")
        ]),
        Divider(),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PostIconButton(
                icon: MdiIcons.thumbUpOutline, text: "Like", onPressed: () {}),
            PostIconButton(
                icon: MdiIcons.commentOutline,
                text: "comment",
                onPressed: () {}),
            PostIconButton(
                icon: MdiIcons.shareOutline, text: "share", onPressed: () {})
          ],
        ),
      ],
    );
  }
}

class PostIconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onPressed;

  const PostIconButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onPressed();
        },
        child: Row(children: [Icon(icon), SizedBox(width: 3), Text(text)]));
  }
}
