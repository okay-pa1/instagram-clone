import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/pages/add_post_page.dart';
import 'package:instagram/pages/explore_page.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/reels_page.dart';

import 'home_page.dart';

class OpenPage extends StatefulWidget {
  const OpenPage({super.key});

  @override
  State<OpenPage> createState() => _OpenPageState();
}



class _OpenPageState extends State<OpenPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions=<Widget>[
    HomePage(),
    ExplorePage(),
    AddPost(),
    ReelsPage(),
    ProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar( 
          title: Text('Instagram',
          style:  GoogleFonts.getFont('Lobster',color: Colors.white,fontSize: 27),),
        backgroundColor: Colors.black,
        actions:<Widget>[
          IconButton(color: Colors.white,
            onPressed: (){}, 
          icon: const Icon(Icons.favorite)),
          IconButton(color: Colors.white,
            onPressed: (){}, 
          icon: const Icon(Icons.chat_outlined)),
        ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Divider(color: Colors.grey,),
            BottomNavigationBar(
              iconSize: 30,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label:'Home',
                  backgroundColor: Colors.black,),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                  backgroundColor: Colors.black,),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_outlined),
                  label: 'Add post',
                  backgroundColor: Colors.black,),
                BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection_rounded),
                  label: 'reels',
                  backgroundColor: Colors.black,),
                BottomNavigationBarItem(
                  icon: Icon(Icons.sentiment_neutral),
                  label: 'profile',
                  backgroundColor: Colors.black,)
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              onTap: _onItemTapped,
            ),
          ],
        ),
      ),
    );
  }
}