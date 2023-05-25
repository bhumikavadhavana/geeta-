import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed("Home_Page");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://media1.giphy.com/media/48HUcXwM5Yt6E/giphy.gif?cid=ecf05e476acs3zlexfyygauefncwtbo62utgk1kdyakwsf8v&ep=v1_gifs_search&rid=giphy.gif&ct=g"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
