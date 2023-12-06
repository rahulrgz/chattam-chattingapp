import 'package:flutter/material.dart';

import '../core/globel_variables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.green,
              title: Text(
                "Whatsapp",
                style: TextStyle(color: Colors.white, fontSize: h * 0.02),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Icon(
                      Icons.groups,
                      size: h * 0.02,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Chats",
                      style: TextStyle(color: Colors.white, fontSize: h * 0.02),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Status",
                      style: TextStyle(color: Colors.white, fontSize: h * 0.02),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Calls",
                      style: TextStyle(color: Colors.white, fontSize: h * 0.02),
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(children: [
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(),
                      title: Text('Name '),
                      subtitle: Text('Your Name'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(),
                      title: Text('Name 12'),
                      subtitle: Text('Your Name 21'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(),
                      title: Text('Name 123'),
                      subtitle: Text('Your Name 321'),
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
