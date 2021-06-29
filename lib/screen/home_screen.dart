
import 'package:chat_ui/widget/category_selector.dart';
import 'package:chat_ui/widget/favorite_contacts.dart';
import 'package:chat_ui/widget/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Chats',
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500.0,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: Column(
                children: [
                  FavoriteContacts(),
                  RecentChats()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
