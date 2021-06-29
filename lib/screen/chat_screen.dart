import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User? user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessege(Message message, bool isMy) {
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: isMy
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment:
            isMy ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message.time!,
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(message.text!,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w600)),
        ],
      ),
      decoration: BoxDecoration(
          color: isMy ? Color(0xFFd2f8d2) : Color(0xfffadadd),
          borderRadius: isMy
              ? BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                )),
    );
    if (isMy) {
      return msg;
    }
    return Row(
      children: [
        msg,
        IconButton(
            onPressed: () {},
            icon: message.isLiked!
                ? Icon(
                    Icons.favorite,
                    color: message.isLiked!
                        ? Theme.of(context).primaryColor
                        : Colors.blueGrey,
                  )
                : Icon(Icons.favorite_border, color: Colors.red))
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.attach_file,
            size: 25.0,
            color: Colors.blueGrey,
          ),
          Icon(
            Icons.sentiment_satisfied_alt,
            size: 25.0,
            color: Colors.blueGrey,
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
              child: TextField(
            cursorHeight: 20,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (val) {},
            decoration:
                InputDecoration.collapsed(hintText: 'Send a messege...'),
          )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                size: 25.0,
                color: Theme.of(context).primaryColor,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: AnimatedTextKit(
          totalRepeatCount: 1,
          animatedTexts: [
            TypewriterAnimatedText(widget.user!.name,
                textStyle:
                    TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                speed: Duration(milliseconds: 150)),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25.0,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: ListView.builder(
                      
                        reverse: true,
                        padding: EdgeInsets.only(top: 15.0),
                        physics: BouncingScrollPhysics(),
                        itemCount: messages.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Message message = messages[index];
                          final bool isMy =
                              message.sender!.id == currentUser.id;
                          return _buildMessege(message, isMy);
                        }),
                  )),
            ),
            _buildMessageComposer()
          ],
        ),
      ),
    );
  }
}
