import 'package:counter_app/catalog_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('enter'),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Catalog()));
          },
        ),
      )
    );
  }
}


