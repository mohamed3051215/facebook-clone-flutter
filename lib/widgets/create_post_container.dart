import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                FacebookAvatar(user: currentUser),
                SizedBox(width: 14),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintStyle: TextStyle(fontSize: 20),
                        border: InputBorder.none,
                        hintText: "what's on your mind?"),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(children: <Widget>[
              ElevatedButton.icon(
                
                  icon: Icon(Icons.videocam, size: 40, color: Colors.orange),
                  style: ButtonStyle(
                      shadowColor:
                          MaterialStateProperty.all<Color>(Palette.scaffold),
                      elevation: MaterialStateProperty.all<double>(0.0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Palette.scaffold)),
                  label: Text("Live", style: TextStyle(color: Colors.black)),
                  onPressed: () {
                    print("hello world");
                  }),
              Container(
                width: .5,
                height: 50,
                color: Colors.grey[400],
              ),
              ElevatedButton.icon(
                  icon:
                      Icon(Icons.photo_library, size: 40, color: Colors.green),
                  style: ButtonStyle(
                      shadowColor:
                          MaterialStateProperty.all<Color>(Palette.scaffold),
                      elevation: MaterialStateProperty.all<double>(0.0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Palette.scaffold)),
                  label: Text("Photo", style: TextStyle(color: Colors.black)),
                  onPressed: () {
                    print("hello world");
                  }),
              Container(
                width: .5,
                height: 50,
                color: Colors.grey[400],
              ),
                            ElevatedButton.icon(
                  icon:
                      Icon(Icons.video_call, size: 40, color: Colors.pink),
                  style: ButtonStyle(
                      shadowColor:
                          MaterialStateProperty.all<Color>(Palette.scaffold),
                      elevation: MaterialStateProperty.all<double>(0.0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Palette.scaffold)),
                  label: Text("Room", style: TextStyle(color: Colors.black)),
                  onPressed: () {
                    print("hello world");
                  }),

            ])
          ],
        ),
      ),
    );
  }
}
