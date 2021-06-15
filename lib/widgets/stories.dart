// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/create_story.dart';
import 'package:facebook_clone/widgets/stories_avatar.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> myStories = stories.map<Widget>((story) {
      return Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                    imageUrl: story.imageUrl,
                    fit: BoxFit.cover,
                    width: 200,
                    height: 300),
              ),
              Positioned(
                left: 14,
                top: 14,
                child: StoryAvatar(story: story),
              ),
              Positioned(
                  bottom: 5,
                  left: 5,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        child: Text(story.user.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  )),
            ],
          ));
    }).toList();
    myStories.insert(0, CreateStory());
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
            width: size.width,
            height: 270,
            child: ListView(
              children: myStories,
              scrollDirection: Axis.horizontal,
            )),
      ),
    );
  }
}
