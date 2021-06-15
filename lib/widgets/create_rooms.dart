import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/create_room_avatar.dart';
import 'package:facebook_clone/widgets/create_room_widget.dart';
import 'package:flutter/material.dart';

class CreateRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> myList = onlineUsers.map<Widget>((User user) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: CreateRoomAvatar(user: user),
      );
    }).toList();
    myList.insert(0, CreateRoomsWidget());
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3),
        width: size.width,
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: myList,
        ),
      ),
    );
  }
}
