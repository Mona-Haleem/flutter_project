import 'package:flutter/material.dart';
import 'chat_item.dart';

class ChatList extends StatelessWidget {

  final List<Map<String, dynamic>> users;

  const ChatList({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ChatItem(
          index: index,
          name: users[index]["name"],
          message: users[index]["message"],
          time: users[index]["time"],
          isOnline: users[index]["isOnline"],
        );
      },
    );
  }
}
