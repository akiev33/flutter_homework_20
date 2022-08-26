import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Expanded(
              child: Text(
                'image',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 105,
              width: double.infinity,
              color: Colors.green,
              // decoration: const BoxDecoration(color: Colors.green),
              child: ListView.separated(
                padding: EdgeInsets.all(17),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => TextAdd(),
                separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextAdd extends StatelessWidget {
  const TextAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 85,
      color: Colors.orange,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          '  +\nAdd',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
