// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: 300,
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                      imageUrl: currentUser.imageUrl,
                      fit: BoxFit.cover,
                      width: 150,
                      height: 300)),
              Positioned(
                left: 14,
                top: 14,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Icon(Icons.add, size: 55, color: Colors.blue)),
                ),
              ),
              Positioned(
                  bottom: 5,
                  left: 5,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        child: Text("Add to Story",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
