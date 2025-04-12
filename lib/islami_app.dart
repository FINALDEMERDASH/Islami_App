import 'package:flutter/material.dart';
import 'package:islami_app/core/routes/routes_manager.dart';
import 'package:islami_app/presentation/screens/splash/splash.dart';

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RoutesManager.router,
    );
  }
}
