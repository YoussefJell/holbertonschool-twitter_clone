import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/providers/share_state.dart';
import 'package:twitter/screens/chats_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';

class BarMenu extends StatefulWidget {
  const BarMenu({super.key});

  @override
  State<BarMenu> createState() => _BarMenuState();
}

void Function() goToPage(BuildContext context, Widget widget) {
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  };
}

class _BarMenuState extends State<BarMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              hoverColor: Colors.transparent,
              onPressed: goToPage(context, const HomeScreen()),
              icon: const Icon(
                Icons.home,
                color: Colors.grey,
                size: 30.0,
              ),
            ),
            IconButton(
                hoverColor: Colors.transparent,
                onPressed: goToPage(context, const SearchScreen()),
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 30.0,
                )),
            IconButton(
                hoverColor: Colors.transparent,
                onPressed: goToPage(context, const NotificationsScreen()),
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                  size: 30.0,
                )),
            IconButton(
                hoverColor: Colors.transparent,
                onPressed: goToPage(context, const ChatsScreen()),
                icon: const Icon(
                  Icons.mail,
                  color: Colors.grey,
                  size: 30.0,
                )),
          ],
        ));
  }
}
