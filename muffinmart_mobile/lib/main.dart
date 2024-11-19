import 'package:flutter/material.dart';
import 'package:muffinmart_mobile/screens/login.dart';

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
        title: '',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.brown,
            ).copyWith(secondary: Colors.brown[400]),
        ),
        home:  const LoginPage(),
      )
    );
  }
}

