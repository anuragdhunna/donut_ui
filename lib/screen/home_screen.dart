import 'package:donut_ui/utils/widgetFunctions.dart';
import 'package:flutter/material.dart';

import '../utils/food_items.dart';
import '../utils/food_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.grey[800],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(
              Icons.person,
              color: Colors.grey[800],
            ),
          )
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: const [
                  Text(
                    'I want to ',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            addVerticalSpace(20),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              indicatorColor: Colors.pink,
              tabs: const [
                Tab(
                  icon: FoodTab(iconPath: "lib/icons/donut.png"),
                ),
                Tab(
                  icon: FoodTab(iconPath: "lib/icons/burger.png"),
                ),
                Tab(
                  icon: FoodTab(iconPath: "lib/icons/pancakes.png"),
                ),
                Tab(
                  icon: FoodTab(iconPath: "lib/icons/smoothie.png"),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  FoodItems(),
                  FoodItems(),
                  FoodItems(),
                  FoodItems(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
