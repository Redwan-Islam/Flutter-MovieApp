import 'package:flutter/material.dart';
import 'moviesinfo.dart';

class Moviedescription extends StatefulWidget {
  final Movie movie;
  Moviedescription(this.movie);

  @override
  State<Moviedescription> createState() => _MoviedescriptionState();
}

class _MoviedescriptionState extends State<Moviedescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text(widget.movie.name!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      spreadRadius: 2),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(48),
                        bottomRight: Radius.circular(48)),
                    child: Image.asset(
                      widget.movie.pictures!,
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Chip(
                        backgroundColor: Colors.red.shade400,
                        label: Text(
                          widget.movie.name!,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Icon(
                        Icons.timer,
                        size: 45,
                        color: Colors.red.shade900,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '117 Min',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Icon(
                        Icons.calendar_view_month,
                        size: 45,
                        color: Colors.red.shade900,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.movie.releaseyear.toString(),
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Icon(
                        Icons.star,
                        size: 45,
                        color: Colors.red.shade900,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.movie.rating.toString(),
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text(
                    widget.movie.details!,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
