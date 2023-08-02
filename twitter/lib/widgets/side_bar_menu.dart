import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                  height: 90,
                ),
                Text(
                  'User Name',
                  style: TextStyle(color: Colors.grey[350], fontSize: 20),
                ),
                const Text('0 Followers 0 Following'),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                bottom: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.list),
                  title: const Text('Lists'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.bookmark),
                  title: const Text('Bookmark'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.bolt),
                  title: const Text('Moments'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Settings and privacy'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Help Center'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
