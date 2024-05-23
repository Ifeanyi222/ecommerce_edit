import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    AssetImage('assets/images/profile_picture.jpeg'),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Nwokedike Linus',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Text(
                'linusify@ymail.com',
                style: const TextStyle(fontSize: 16.0),
              ),
              const Divider(thickness: 1.5, color: Colors.grey),
              const SizedBox(height: 10.0),
              ListTile(
                title: const Text('Joined'),
                subtitle: Text('2024-05-21'),
                trailing: const Icon(Icons.calendar_today),
              ),
              ListTile(
                title: const Text('Location'),
                subtitle: Text('Anambra, Nigeria'),
                trailing: const Icon(Icons.place),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
