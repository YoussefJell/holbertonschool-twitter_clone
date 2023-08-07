import 'package:flutter/material.dart';
import 'package:twitter/assets/dummy_data.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
          height: 120,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 2),
                child: Center(
                  child: CustomEntryField(
                    hint: 'Search...',
                    controller: _searchController,
                    isPassword: false,
                  ),
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
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          final user = userList[index];
          return UsersSearchResultsWidget(
            name: user['name'],
            username: user['username'],
            bio: user['bio'],
            imgUrl: user['imgUrl'],
            isVerified: user['isVerified'],
          );
        },
      ),
      bottomNavigationBar: const BarMenu(),
    );
  }
}
