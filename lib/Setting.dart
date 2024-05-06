import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue, // Blue color for the top part
            height: MediaQuery.of(context).size.height * 0.25, // Adjust height as needed
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15), // Spacer for the top part
                const Center(
                  child: CircleAvatar(
                    radius: 50, // Adjust size as needed
                    backgroundColor: Colors.grey, // Placeholder color
                    // You can set the user's profile image here
                    // backgroundImage: NetworkImage('URL_TO_USER_PROFILE_IMAGE'),
                    // Alternatively, you can use Icons.person if no image is available
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'User Name', // Replace with user's name
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                ListTile(
                  title: Text('Change Account'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Navigate to change account screen
                    Navigator.pushNamed(context, '/change_account');
                  },
                ),
                  ListTile(
                  title: Text('Change password'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Navigate to change account screen
                    Navigator.pushNamed(context, '/change_password');
                  },
                ),
                  ListTile(
                  title: Text('About'),
                  trailing: Icon(Icons.info),
                  onTap: () {
                    // Navigate to change account screen
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                ListTile(
                  title: Text('Log Out'),
                  trailing: Icon(Icons.logout),
                  onTap: () {
                    // Perform log out action
                    // For example, show a confirmation dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Log Out'),
                          content: Text('Are you sure you want to log out?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close dialog
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Perform log out action here
                                // For example, navigate to log in screen
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  '/login',
                                  (Route<dynamic> route) => false, // Remove all routes from stack
                                );
                              },
                              child: Text('Log Out'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                // Add more settings options as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
