import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './GridFind/GridFindCollectionPage.dart' as gridFind;
import './user_profile/profile_page//user_profile_page.dart' as userProfile;

bool keepGridAlive;
bool keepProfileAlive;

class NavControllerState extends StatelessWidget {

//  TabController controller;
//
  @override
  void initState() {
    keepGridAlive = true;
    keepProfileAlive = true;
  }
//
//  @override
//  void dispose() {
//    controller.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return new MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 2,
        child: new Scaffold(
          body: TabBarView(
            children: [
              gridFind.GridFindCollectionPage(),
              userProfile.UserProfile()
            ],
          ),
          bottomNavigationBar: new SafeArea(
            child: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.rss_feed),
                ),
              ],
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.purple,
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }






//  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
//    return new Scaffold(
//        bottomNavigationBar: new Material(
//            color: Colors.deepOrange,
//            child: new TabBar(
//                controller: controller,
//                tabs: <Tab>[
//                  new Tab(icon: new Icon(Icons.arrow_forward)),
//                  new Tab(icon: new Icon(Icons.arrow_back)),
//                ]
//            )
//        ),
//        body: new TabBarView(
//            controller: controller,
//            children: <Widget>[
//              new gridFind.GridFindCollectionPage(),
//              new userProfile.UserProfile()
//            ]
//        )
//    );
//  }
}