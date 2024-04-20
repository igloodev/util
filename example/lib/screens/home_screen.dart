import 'package:example/screens/util_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Example",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UtilScreen(),
                      ),
                    );
                  },
                  child: const Text("Util"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Parsing"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("SizeConstant"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
