import 'package:flutter/material.dart';
import 'package:pm_shopping_app/cart_page.dart';
import 'package:pm_shopping_app/product_variables.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = [ProductList(), CartPage()];

  // init state is the first thing which is called before build function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: currentPage == 0 ? ProductList() : CartPage(),
      body: IndexedStack(index: currentPage, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },

        currentIndex: currentPage,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        ],
      ),
    );
  }
}
