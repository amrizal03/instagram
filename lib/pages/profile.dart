import 'package:flutter/material.dart';
import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "Chels",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
              ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                  Icons.menu,
                  color: Colors.black,
              ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Post", "200"),
                      InfoItem("Followers", "1250"),
                      InfoItem("Following", "999"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
