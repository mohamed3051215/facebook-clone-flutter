import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart' show MdiIcons;

class FacebookAppBar extends StatelessWidget {
  const FacebookAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      title: Text(
        "facebook",
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
          color: Palette.facebookBlue,
        ),
      ),
      backgroundColor: Palette.scaffold,
      actions: <Widget>[
        CircleButton(
            icon: Icons.search, iconSize: 28.0, onPressed: () {}),
        CircleButton(
            icon: MdiIcons.facebookMessenger,
            iconSize: 28.0,
            onPressed: () {})
      ],
    );
  }
}
