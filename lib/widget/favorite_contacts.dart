import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/screen/chat_screen.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.blueGrey),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz,
                        size: 30.0, color: Colors.blueGrey))
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(
                  left: 10.0,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChatScreen(
                              user: favorites[index],
                            ),
                          ));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(height: 6.0),
                          Text(favorites[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                  color: Colors.blueGrey)),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
