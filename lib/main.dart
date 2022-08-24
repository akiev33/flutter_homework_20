import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Sample App'),
        ),
        body: ColoredBox(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 120,
              ),
              Expanded(
                child: const Text(
                  'image',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 105,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.green),
                child: Expanded(
                  child: ListView(
                    children: [
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                      TextAdd(),
                    ],
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextAdd extends StatelessWidget {
  const TextAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(17),
          height: 70,
          width: 85,
          color: Colors.orange,
          child: Container(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '  +\nAdd',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
