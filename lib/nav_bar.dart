import 'package:flutter/material.dart';

class BottemNavBar extends StatefulWidget {
  const BottemNavBar({super.key});

  @override
  State<BottemNavBar> createState() => _BottemNavBarState();
}

class _BottemNavBarState extends State<BottemNavBar> {
  int currentIndex = 0;
  List<Widget> Tabs = [
    Center(child: Text("Home",style: TextStyle(fontSize: 30))),
    Center(child: Text("Search",style: TextStyle(fontSize: 30))),
    Center(child: Text("Add",style: TextStyle(fontSize: 30),)),
     Center(child: Text("Profile", style: TextStyle(fontSize: 30))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.menu),
        title: Text("Bottom Navigation Bar",style: TextStyle(color: Colors.white70),),
        centerTitle: true,
      ),

      body: Tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
                backgroundColor: Colors.blueGrey
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.blueGrey),

          ]

      ,


    ),
    );

  }
}
