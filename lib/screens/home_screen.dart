import 'package:facebook_clone/widgets/widgets.dart';
import "package:flutter/material.dart";

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          FacebookAppBar(),
          CreatePostContainer(),
          ColoredPadding(),
          CreateRooms(),
          ColoredPadding(),
          Stories(),
          ColoredPadding(),
          Posts(),
        ],
      ),
    );
  }
}
