import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("design task-2"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget1(size),
          widget2(size),
          widget3(size),
        ],
      ),
    );
  }

  Widget widget1(Size size) {
    return Expanded(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.orangeAccent,
        ),
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Search Text"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () => {}, child: const Text("Press")),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget widget2(Size size) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                color: Colors.blue,
                child: const Center(child: Text("B1")),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                color: Colors.blue,
                child: const Center(child: Text("B1")),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                color: Colors.blue,
                child: const Center(child: Text("B1")),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                color: Colors.blue,
                child: const Center(child: Text("B1")),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget widget3(Size size) {
    return Expanded(
      child: Container(
        width: size.width,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 70,
              width: 70,
              color: Colors.blue,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.blue,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
