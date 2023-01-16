import 'package:flutter/material.dart';

class ShortPage extends StatelessWidget {
  const ShortPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [Text("SHORT")],
          ),
        ),
      ),
    );
  }
}
