import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 1),
            Text(
              'Settings',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView(
                children: [
                  _buildSettingsItem(
                    icon: Icons.person_outline,
                    title: 'Profile settings',
                    subtitle: 'Settings regarding your profile',
                    onTap: () {},
                  ),
                  _buildSettingsItem(
                    icon: Icons.description_outlined,
                    title: 'News settings',
                    subtitle: 'Choose your favourite topics',
                    onTap: () {},
                  ),
                  _buildSettingsItem(
                    icon: Icons.notifications_outlined,
                    title: 'Notifications',
                    subtitle: 'When would you like to be notified',
                    onTap: () {},
                  ),
                  _buildSettingsItem(
                    icon: Icons.folder_open_outlined,
                    title: 'Subscriptions',
                    subtitle: 'Currently, you are in Starter Plan',
                    onTap: () {},
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Other',
                    style: TextStyle(fontSize: 28),
                  ),
                  const SizedBox(height: 5),
                  _buildSettingsItem(
                    icon: Icons.bug_report_outlined,
                    title: 'Bug report',
                    subtitle: 'Report bugs very easy',
                    onTap: () {},
                  ),
                  _buildSettingsItem(
                    icon: Icons.share_outlined,
                    title: 'Share the app',
                    subtitle: 'Share on social media networks',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.all(8.0),
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 36, color: Colors.black),
      ),
      title: Text(title, style: TextStyle()),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
      trailing: Container(
        child: Icon(Icons.arrow_circle_right_outlined, color: Colors.grey),
      ),
      onTap: onTap,
    );
  }
}
