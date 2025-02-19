import 'package:flutter/material.dart';
import 'package:task_one/pages/page_one.dart';
import 'package:task_one/pages/page_three.dart';
import 'package:task_one/pages/page_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task One"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageOne()));
            }, child: const Text("First Question")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageTwo()));
            }, child: const Text("Second Question")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context) => const PageThree()));
            }, child: const Text("Three Question")),
          ],
        ),
      ),
    );
  }
}
