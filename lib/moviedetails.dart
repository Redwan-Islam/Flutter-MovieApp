import 'package:flutter/material.dart';
import 'package:movie/moviedescription.dart';
import 'package:movie/temp_db.dart';

// ignore: camel_case_types
class moviedetailspage extends StatefulWidget {
  const moviedetailspage({Key? key}) : super(key: key);

  @override
  State<moviedetailspage> createState() => _moviedetailspageState();
}

// ignore: camel_case_types
class _moviedetailspageState extends State<moviedetailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: const Text('Marvel Movies'),
      ),
      body: ListView(
        children: movies
            .map(
              (movie) => ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Moviedescription(movie),
                    ),
                  );
                },
                title: Text(movie.name!),
                subtitle: Text(movie.category!),
                leading: Image.asset(
                  movie.pictures!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.pink,
                    ),
                    Text(movie.rating.toString()),
                  ],
                ),
              ),
            )
            .toList(),
      ),
      drawer: const Drawer(),
    );
  }
}
