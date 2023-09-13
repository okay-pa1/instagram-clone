import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('asdas'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
                    width: 200,
                    height: 200,
                    decoration:BoxDecoration(
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(colors: [Colors.red,Colors.orange]),
                        width: 4,
                        ),
                        borderRadius: BorderRadius.circular(16)
                    ),
                  ),
        ],
      )
    
    );
  }
}