import 'package:flutter/material.dart';

class ConversationPage extends StatelessWidget {
  final int indexPage;
  const ConversationPage({super.key, required this.indexPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: Center(
        child: Text("page: $indexPage"),
      ),
    );
  }
}
