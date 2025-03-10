import 'package:flutter/material.dart';
import 'user_avatar.dart';

class ChatItem extends StatelessWidget {
  final int index;
  final String name;
  final String message;
  final String time;
  final bool isOnline;

  const ChatItem({
    super.key,
    required this.index,
    required this.name,
    required this.message,
    required this.time,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: index.isEven ? Color(0xff111111) : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5), // Adjust padding
        leading: UserAvatar(radius: 30, name: name, isOnline: isOnline),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        subtitle: Text(message, style:TextStyle(color: Colors.grey[100])),
        trailing: Text(time, style:TextStyle(color: Colors.grey[300])),
        onTap: () {},
      ),
    );
  }
}
