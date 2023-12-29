import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications button press
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Handle profile button press
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        AssetImage('assets/sample_profile_picture.jpg'),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle home button press
              },
            ),
            ListTile(
              title: Text('My Courses'),
              onTap: () {
                // Handle my courses button press
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle settings button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
