

import 'package:flutter/material.dart';

import 'Presentation/Screens/Home/TabBarScreens.dart';

class AppRoute{
  Route onGenerateRoute(RouteSettings routeArguments){
    switch(routeArguments.name){
      case '/':
        return MaterialPageRoute(builder: (context) => TabBarScreens());


      default :
        return MaterialPageRoute(builder: (context) => TabBarScreens());
    }
  }
}