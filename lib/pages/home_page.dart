import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: Text("Chats", style: TextStyle(),),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) => const Text(
                  "2",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
