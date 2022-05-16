
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'dart:math' as math;
import 'dart:async';



import '../../../utilities/constants.dart';

import '../../Widgets/ExitDialogue.dart';
import 'ShopScreens/ShopHome.dart';


class TabBarScreens extends StatefulWidget {
  @override
  _TabBarScreensState createState() => _TabBarScreensState();
}

var onTapRecognizer;

class _TabBarScreensState extends State<TabBarScreens> {

  TabController? _tabController;
  Timer? timer;

  double iconSize=22;
  String? code;
  // DocumentSnapshot user;
  var user;
  bool status=true;
  int newMessage=0;

  int selected=0;

  EdgeInsets tabIconPadding=const EdgeInsets.symmetric(vertical: 3.0,horizontal: 2);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    getCurrentUserDetails();
    getNewMessages();
    timer = Timer.periodic(const Duration(seconds: 15), (Timer t) => getNewMessages());
  }

  getCurrentUserDetails() async {
    // user=await FirebaseFunction().currentUserDetails();
    // setState(() {
    //   user;
    // });
  }

  getNewMessages() async {
    // newMessage=await FirebaseFunction().checkNewMessages();
    // print(newMessage);
    // setState(() {
    //   newMessage;
    // });
  }


  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return

      WillPopScope(
        onWillPop: () async {
          exitDialogue(context);
          return false;
        },
        child: Scaffold(
        key: _scaffoldKey,

          body:  DefaultTabController(
            length: 5,
            child: Scaffold(
                body: Stack(
                  children: [
                    TabBarView(
                      controller: _tabController,
                      children: [
                        Center(
                            child: ShopHome()
                        ),
                        Center(
                            child: Container(child: Text("Screen 1"),)
                        ),
                         Center(
                            child:  Container(child: Text("Screen 2"),)
                        ),
                         Center(
                            child:  Container(child: Text("Screen 3"),)
                        ),
                         Center(
                            child:  Container(child: Text("Screen 4"),)
                        ),


                      ],
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TabBar(
                                controller: _tabController,
                                labelColor: btnColor1,
                                indicatorColor: btnColor1,
                                unselectedLabelColor: Colors.black,
                                isScrollable: true,
                                padding: EdgeInsets.zero,
                                indicatorSize: TabBarIndicatorSize.label,
                                tabs: [
                                  Tab(
                                    icon: Padding(
                                      padding: tabIconPadding,
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.home,
                                            size: iconSize,
                                          ),
                                          const Text(
                                              "Home",
                                              style: TextStyle(
                                                  fontSize: 10)
                                          )
                                        ],
                                      ),
                                    ),

                                  ),
                                  Tab(
                                    icon: Padding(
                                      padding: tabIconPadding,
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.category,
                                            size: iconSize,
                                          ),
                                          const Text(
                                              "Category",
                                              style: TextStyle(
                                                  fontSize: 10)
                                          )
                                        ],
                                      ),
                                    ),

                                  ),
                                  Tab(
                                    icon: Padding(
                                      padding: tabIconPadding,

                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.shopping_cart,
                                            size: iconSize,
                                          ),
                                          const Text(
                                              "Cart",
                                              style: TextStyle(
                                                  fontSize: 10)
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    icon: Padding(
                                      padding: tabIconPadding,

                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.chat,
                                            size: iconSize,
                                          ),
                                          const Text(
                                              "Chat",
                                              style: TextStyle(
                                                  fontSize: 10)
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    icon: Padding(
                                      padding: tabIconPadding,

                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            size: iconSize,
                                          ),
                                          const Text(
                                            "My Account",
                                            style: TextStyle(
                                                fontSize: 10
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      );

  }
}

