import 'package:flutter/material.dart';
import 'package:flutter_project/lab4/widgets/active_users.dart';
import 'package:flutter_project/lab4/widgets/chat_list.dart';
import 'package:flutter_project/lab4/widgets/search_bar.dart';
import 'package:flutter_project/lab4/widgets/user_avatar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  final List<Map<String, dynamic>> users = const [
    {"name": "Adham Ashraf", "message": "Hey, how are you?", "time": "03:00 AM", "isOnline": true},
    {"name": "Ahmed", "message": "What's up?", "time": "02:00 AM", "isOnline": true},
    {"name": "Anas", "message": "I'll call you later.", "time": "12:00 AM", "isOnline": false},
    {"name": "Sara Gamal", "message": "Good morning!", "time": "11:00 AM", "isOnline": true},
    {"name": "Manar Samy", "message": "I'm on my way.", "time": "10:45 AM", "isOnline": false},
    {"name": "John", "message": "See you soon!", "time": "10:30 AM", "isOnline": false},
    {"name": "Omar", "message": "Can we talk?", "time": "10:00 AM", "isOnline": true},
    {"name": "Marwa Ahmed", "message": "Let's catch up!", "time": "09:30 AM", "isOnline": true},
    {"name": "Nour", "message": "Good night!", "time": "09:00 AM", "isOnline": false},
    {"name": "Lina", "message": "It's been a long day.", "time": "08:30 AM", "isOnline": true},
    {"name": "Karim", "message": "Did you finish the project?", "time": "08:00 AM", "isOnline": true},
    {"name": "Youssef", "message": "I'll send the files soon.", "time": "07:45 AM", "isOnline": false},
    {"name": "Mariam", "message": "Let's go out!", "time": "07:30 AM", "isOnline": true},
    {"name": "Fatima", "message": "Call me when you're free.", "time": "07:00 AM", "isOnline": false},
    {"name": "Hassan", "message": "How was your day?", "time": "06:30 AM", "isOnline": true},
    {"name": "Zain", "message": "I'm almost there.", "time": "06:00 AM", "isOnline": true},
    {"name": "Dina", "message": "Did you get my message?", "time": "05:45 AM", "isOnline": false},
    {"name": "Rania", "message": "Miss you!", "time": "05:30 AM", "isOnline": true},
    {"name": "Samir", "message": "Have a great day!", "time": "05:00 AM", "isOnline": false},
    {"name": "Wael", "message": "Where are you?", "time": "04:45 AM", "isOnline": true},
    {"name": "Heba", "message": "Let's plan for the weekend.", "time": "04:30 AM", "isOnline": true},
    {"name": "Tarek", "message": "Meeting at 3 PM?", "time": "04:00 AM", "isOnline": false},
  ];

  List<String> get activeUserNames =>
      users.where((user) => user["isOnline"] as bool).map((user) => user["name"] as String).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: UserAvatar(radius: 20, name: ''),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              shape: BoxShape.circle, // Circle shape
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt, color: Colors.black87),
            ),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              shape: BoxShape.circle, // Circle shape
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit, color: Colors.black87),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomSearchBar(),
            ActiveUsersList(activeUsers:activeUserNames),
            Expanded(child: ChatList(users:users)),
          ],
        ),
      ),
    );
  }
}
