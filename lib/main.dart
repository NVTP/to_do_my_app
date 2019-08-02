import 'package:flutter/material.dart';
import 'views/sign_in_page.dart';

main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do My App',
      home: SignInPage(),
    ),
  );
}

