import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Data/Repo/SearchProductRepo.dart';
import 'Logic/Bloc/SearchProducts/search_products_bloc.dart';
import 'Routs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appGenerateRoute = AppRoute();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider<SearchProductsBloc>(
          create: (BuildContext context)=>SearchProductsBloc(SearchProductRepo()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: _appGenerateRoute.onGenerateRoute,
        initialRoute: "/",
        // home: Form1Screen1(),
      ),
    );
  }
}

