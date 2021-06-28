//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp();
  runApp(Helpforyou());
}

class Helpforyou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Login(),
      color: Colors.white,
    );
  }
}