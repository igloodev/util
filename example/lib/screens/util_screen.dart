import 'package:flutter/material.dart';

import 'masked_string.dart';

class UtilScreen extends StatefulWidget {
  const UtilScreen({super.key});

  @override
  State<UtilScreen> createState() => _UtilScreenState();
}

class _UtilScreenState extends State<UtilScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: const Text(
            "Utils Function",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
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
                        builder: (context) => const MaskedString(),
                      ),
                    );
                  },
                  child: const Text("Masked String"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
