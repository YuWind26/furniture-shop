import 'package:flutter/material.dart';

import 'pages/_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slicing Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const BasicMainNavigationView(),
    );
  }
}

class BasicMainNavigationView extends StatefulWidget {
  const BasicMainNavigationView({Key? key}) : super(key: key);

  @override
  State<BasicMainNavigationView> createState() =>
      _BasicMainNavigationViewState();
}

class _BasicMainNavigationViewState extends State<BasicMainNavigationView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            const HomeScreen(),
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.purple[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(color: Colors.white),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[400],
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                label: " ",
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[500],
                  ),
                  child: const Icon(
                    Icons.home_outlined,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              const BottomNavigationBarItem(
                label: " ",
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                backgroundColor: Colors.white,
              ),
              const BottomNavigationBarItem(
                label: " ",
                icon: Icon(
                  Icons.favorite_outline,
                ),
                backgroundColor: Colors.white,
              ),
              const BottomNavigationBarItem(
                label: " ",
                icon: Icon(
                  Icons.perm_identity_outlined,
                ),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
