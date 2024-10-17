import 'package:flutter/material.dart';
import 'package:jewelry_app/pages/homepage.dart';
import 'package:jewelry_app/pages/login_page.dart';
import 'package:jewelry_app/pages/onboarding_page.dart';
import 'package:jewelry_app/pages/profile_page.dart';
import 'package:jewelry_app/pages/sign_up_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentIndex = 0;
  bool isIconSelected = true;

  void navigateToPage(int index) {
    setState(() {
      for (var i = 0; i < selectedPage.length; i++) {
        isIconSelected = false;
      }
      currentIndex = index;
    });
    isIconSelected = true;
  }

  final List selectedPage = [
    const HomePage(),
    const OnboardingPage(),
    const SignUpPage(),
    const LoginPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedPage[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(48),
          child: BottomNavigationBar(
            onTap: navigateToPage,
            currentIndex: currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 39,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(185, 22, 19, 31),
            items: const [
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home_filled,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: ImageIcon(
                  size: 34,
                  AssetImage(
                    'assets/icons/Cart.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'favorites',
                icon: ImageIcon(
                  AssetImage(
                    'assets/icons/Heart.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'tree',
                icon: ImageIcon(
                  size: 34,
                  AssetImage(
                    'assets/icons/chat-bubble.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'tree',
                icon: Icon(
                  Icons.person_outline_outlined,
                ),
              ),
            ],
            selectedItemColor: Colors.brown,
            unselectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
