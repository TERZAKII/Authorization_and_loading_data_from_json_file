import 'package:flutter/material.dart';

class UserListPage extends StatelessWidget {
  final List<dynamic> userList;
  const UserListPage(this.userList, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          final user = userList[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: Text(user['name']),
            subtitle: Text(user['email']),
          );
        },
      ),
    );
  }
}
