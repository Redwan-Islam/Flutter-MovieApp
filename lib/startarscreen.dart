import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie/moviedetails.dart';

class StartarScreen extends StatefulWidget {
  const StartarScreen({Key? key}) : super(key: key);

  @override
  State<StartarScreen> createState() => _StartarScreenState();
}

class _StartarScreenState extends State<StartarScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const moviedetailspage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Image.asset(
                'assets/pictures/logo.png',
                height: 120,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Marvel Movies',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 300),
                child: Text('Redwan Islam',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
