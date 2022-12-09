import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tools Screen'),
      ),
      body: const Center(
        child: Text('tools screen'),
      ),
    );
  }
}
