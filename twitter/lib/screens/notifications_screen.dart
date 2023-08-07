import 'package:flutter/material.dart';
import 'package:twitter/widgets/bar_menu.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
          height: 120,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 20, top: 2),
                child: Text(
                  'Notifications',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            IconButton(
              hoverColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
              color: const Color.fromARGB(255, 0, 172, 238),
            ),
          ],
        ),
      ),
      body: const Center(
          child: Text(
        'No Notifications Yet',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      )),
      bottomNavigationBar: const BarMenu(),
    );
  }
}
