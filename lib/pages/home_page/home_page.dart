import 'dart:developer';

import 'package:chat_app/pages/home_page/item_chat.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: appBar(),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff1d2733),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => ItemChat(indexChat: index),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("edit press");
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}

PreferredSizeWidget appBar() {
  return AppBar(
    elevation: 1.5,
    backgroundColor: const Color(0xff212d3b),
    leading: IconButton(
      onPressed: () {
        log("menu");
      },
      icon: const Icon(Icons.menu),
    ),
    title: const Text(
      "Telegram",
      style: TextStyle(
        fontSize: 21,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          log("search");
        },
        icon: const Icon(Icons.search),
      ),
    ],
  );
}
