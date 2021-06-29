

import 'package:chat_ui/models/user_model.dart';

class Message {
  final User ?sender;
  final String
      ?time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String ?text;
  final bool ?isLiked;
  final bool ?unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/sadid.jpg',
);

// USERS
final User sadid = User(
  id: 1,
  name: 'Sadid',
  imageUrl: 'assets/images/sadid.jpg',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);
final User salman = User(
  id: 5,
  name: 'Salman',
  imageUrl: 'assets/images/Salman2.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
);
final User uaimir = User(
  id: 7,
  name: 'Uaimir',
  imageUrl: 'assets/images/uaimir.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [salman, uaimir, olivia, james, sadid, sophia];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: uaimir,
    time: '1:30 PM',
    text: 'Hi daddy, we love you so much',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: salman,
    time: '12:30 PM',
    text: 'Daddy, when will you buy me an electric motorcycle?',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: sadid,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
