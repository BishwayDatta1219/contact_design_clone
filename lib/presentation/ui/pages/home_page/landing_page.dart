import 'package:contact_design_clone/presentation/ui/pages/home_page/sub_pages/call_page.dart';
import 'package:contact_design_clone/presentation/ui/pages/home_page/sub_pages/contact_list_page.dart';
import 'package:contact_design_clone/presentation/ui/pages/home_page/sub_pages/favorite_page.dart';
import 'package:contact_design_clone/presentation/ui/pages/home_page/sub_pages/recent_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedBottomNavItemIndex = 0;

  _setSelectedBottomNavItemIndex(int index) {
    setState(() {
      _selectedBottomNavItemIndex = index;
    });
  }

  _getContentPages() {
    if (_selectedBottomNavItemIndex == 0) {
      return FavoritePage();
    } else if (_selectedBottomNavItemIndex == 1) {
      return RecentPage();
    } else if (_selectedBottomNavItemIndex == 2) {
      return ContactListPage();
    } else if (_selectedBottomNavItemIndex == 3) {
      return CallPage();
    }

    return Center(child: Text("ERROR!!"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _getContentPages(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedBottomNavItemIndex = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      color:
                          _selectedBottomNavItemIndex == 0
                              ? Colors.blue
                              : Colors.grey.shade500,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Favorite",
                      style: TextStyle(
                        color:
                            _selectedBottomNavItemIndex == 0
                                ? Colors.blue
                                : Colors.grey.shade500,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedBottomNavItemIndex = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.schedule_outlined,
                      color:
                          _selectedBottomNavItemIndex == 1
                              ? Colors.blue
                              : Colors.grey.shade500,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Recent",
                      style: TextStyle(
                        color:
                            _selectedBottomNavItemIndex == 1
                                ? Colors.blue
                                : Colors.grey.shade500,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedBottomNavItemIndex = 2;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color:
                          _selectedBottomNavItemIndex == 2
                              ? Colors.blue
                              : Colors.grey.shade500,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Contact",
                      style: TextStyle(
                        color:
                            _selectedBottomNavItemIndex == 2
                                ? Colors.blue
                                : Colors.grey.shade500,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedBottomNavItemIndex = 3;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.call_outlined,
                      color:
                          _selectedBottomNavItemIndex == 3
                              ? Colors.blue
                              : Colors.grey.shade500,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Call",
                      style: TextStyle(
                        color:
                            _selectedBottomNavItemIndex == 3
                                ? Colors.blue
                                : Colors.grey.shade500,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
