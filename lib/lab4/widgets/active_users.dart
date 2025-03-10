import 'package:flutter/material.dart';
import 'user_avatar.dart';

class ActiveUsersList extends StatelessWidget {
  final List<String> activeUsers;

  const ActiveUsersList({super.key, required this.activeUsers});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: activeUsers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                UserAvatar(
                  radius: 25,
                  name: activeUsers[index],
                  isOnline: true,
                ),
                SizedBox(
                  width: 60,
                  child: Text(
                    activeUsers[index],
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(fontSize: 12,color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
