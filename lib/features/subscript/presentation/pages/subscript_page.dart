import 'package:flutter/material.dart';

class SubscriptPage extends StatelessWidget {
  const SubscriptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [Text("SUBSCRIPT")],
          ),
        ),
      ),
    );
  }
}
