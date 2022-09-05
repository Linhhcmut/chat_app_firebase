import 'dart:developer';

import 'package:chat_app/pages/conversation_page/conversation_page.dart';
import 'package:chat_app/pages/widgets_base/text_base.dart';
import 'package:flutter/material.dart';

class ItemChat extends StatelessWidget {
  final int indexChat;
  const ItemChat({Key? key, required this.indexChat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ConversationPage(indexPage: indexChat)));
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            indexChat == 0 ? Container() : const Divider(thickness: 1.5, indent: 70),
            SizedBox(
              child: Row(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: const <Widget>[
                            TextComonBase(text: "Fuho pro trây đơ", colorText: 0xfff7f8f9, sizeText: 18, fontWeight: FontWeight.w500),
                            SizedBox(width: 7),
                            Icon(Icons.notifications_off, color: Color(0xff4c5d67), size: 15),
                            Spacer(),
                            ImageIcon(AssetImage("assets/icons/double_check.png"), color: Color(0xff5F97C0), size: 18),
                            SizedBox(width: 7),
                            TextComonBase(text: "11:02", colorText: 0xff7d8997, sizeText: 14),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: const <Widget>[
                            TextComonBase(text: "Lộc puho: ", colorText: 0xff7d8997, sizeText: 15),
                            TextComonBase(text: "Đang gồng chưa c...", colorText: 0xff7d8997, sizeText: 15),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
