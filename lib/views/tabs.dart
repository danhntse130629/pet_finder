import 'package:flutter/material.dart';
import 'package:pet_finder/views/principal.dart';
import 'package:pet_finder/views/profile_page.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          children: <Widget>[
            Principal(),
            Principal(),
            Principal(),
            ProfilePage(),
//            HistoryPage(listPerTest: personalityTests,),
//            HistoryPage1(listPerTest: personalityTests,),
//            LoginPage1(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home, size: 26.0,),
            ),
            Tab(
              icon: Icon(Icons.chrome_reader_mode, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.history, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.perm_identity, size: 26.0),
            ),
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black12,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}