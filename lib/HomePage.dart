import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _handleLogout(BuildContext context) {
    //  Implement logout logic
    print('Logging out...');
  }

  void _handleEditProfile(BuildContext context) {
    //  Implement edit profile navigation
    print('Navigating to edit profile...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _handleLogout(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withGreen(10),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile_placeholder.png'),
                    //  Replace with actual user image
                    // You can use NetworkImage for loading from URL
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Denvoll Williamson', // Replace with actual user name
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton.icon(
                    onPressed: () => _handleEditProfile(context),
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit Profile'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const _InfoTile(
                    icon: Icons.phone,
                    title: 'Phone Number',
                    subtitle: '876-469-28-12', // Replace with actual phone number
                  ),
                  const Divider(),
                  const _InfoTile(
                    icon: Icons.email,
                    title: 'Email',
                    subtitle: 'denvoll@stu.ncu.edu.jm.com', // Replace with actual email
                  ),
                  const Divider(),
                  const _InfoTile(
                    icon: Icons.location_on,
                    title: 'Location',
                    subtitle: 'Mandeville, Jamaica', // Replace with actual location
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: const Text('Change Profile Picture'),
                    onTap: () {
                      //  Implement image picker
                      print('Changing profile picture...');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.security),
                    title: const Text('Privacy Settings'),
                    onTap: () {
                      //  Navigate to privacy settings
                      print('Opening privacy settings...');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text('Help & Support'),
                    onTap: () {
                      //  Navigate to help section
                      print('Opening help & support...');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _InfoTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}