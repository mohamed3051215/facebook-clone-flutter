import 'package:flutter/material.dart';

class CreateRoomsWidget extends StatelessWidget {
  const CreateRoomsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue.shade300, width: 4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 12,
            ),
            Icon(Icons.video_call, size: 30, color: Colors.lightBlue.shade300),
            SizedBox(
              width: 20,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Create",
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.lightBlue.shade300),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Room",
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.lightBlue.shade300),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
