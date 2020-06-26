import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sharefile/providers/endpoints.dart';
import 'package:sharefile/providers/files.dart';
import 'package:sharefile/providers/transfer.dart';
import 'package:sharefile/providers/user.dart';
import 'package:sharefile/global.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: User(""),
        ),
        ChangeNotifierProvider.value(
          value: Endpoints(),
        ),
        ChangeNotifierProvider.value(
          value: Files(),
        ),
        ChangeNotifierProvider.value(
          value: Transfer(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Share File',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: Router.navKey,
        initialRoute: Router.splash,
        onGenerateRoute: Router.routes,
      ),
    );
  }
}
