import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black12
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal:  8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.abc),
                  Text('For you'),
                    ],
                  ),
                  Row(children: [
                      Icon(Icons.abc),
                  Text('For you'),
                  ],)
              
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}