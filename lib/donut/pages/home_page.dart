import 'package:flutter/material.dart';
import 'package:uicollection/donut/data.dart';
import 'package:uicollection/donut/shared/bottom_nav_bar.dart';
import 'package:uicollection/donut/shared/category_tab.dart';
import 'package:uicollection/donut/pages/tab_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [];
  final List<Widget> pages = [];

  @override
  void initState() {
    super.initState();

    getTabsAndPages();
  }

  void getTabsAndPages() {
    for (int i = 0; i < categories.length; i++) {
      pages.add(const TabPage());
    }

    tabs =
        categories.map((category) => CategoryTab(category: category)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "I want to EAT",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TabBar(
                tabs: tabs,
                indicatorColor: Colors.pink,
              ),
              Expanded(
                child: TabBarView(
                  children: pages,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
