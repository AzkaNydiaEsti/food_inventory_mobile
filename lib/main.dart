import 'package:flutter/material.dart';
import 'package:food_inventory_mobile/screens/menu.dart';
import 'package:food_inventory_mobile/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
          CookieRequest request = CookieRequest();
          return request;
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 145,190,220)),
          useMaterial3: true,
        ),
        // home: MyHomePage(),
        home: LoginPage(),
        ),
    );
  }
}

