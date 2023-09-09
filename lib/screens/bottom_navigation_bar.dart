import 'package:flutter/material.dart';
import 'package:ticket_booking_ui/screens/home_screen.dart';
import 'package:ticket_booking_ui/screens/search_screen.dart';
import 'package:ticket_booking_ui/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _selectedBottomItem = 0;
  static final List<Widget> _pageList = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text('person'),
  ];

  void _onBottomItemTapped(int index) {
    setState(() {
      _selectedBottomItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageList[_selectedBottomItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBottomItem,
        onTap: _onBottomItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            activeIcon: Icon(Icons.airplane_ticket),
            label: 'ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'person',
          ),
        ],
      ),
    );
  }
}
