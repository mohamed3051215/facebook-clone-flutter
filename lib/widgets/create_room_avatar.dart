// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

class CreateRoomAvatar extends StatelessWidget {
  final User user;

  const CreateRoomAvatar({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
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
        ),
        Positioned(
          bottom: 5,
          right: 3,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                border: Border.all(color: Colors.white, width: 2.4)),
            width: 17,
            height: 17,
          ),
        ),
      ],
    );
  }
}
