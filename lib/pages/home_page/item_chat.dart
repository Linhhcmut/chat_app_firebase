import 'package:chat_app/pages/widgets_base/text_base.dart';
import 'package:flutter/material.dart';

class ItemChat extends StatelessWidget {
  final int? indexChat;
  const ItemChat({Key? key, this.indexChat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        indexChat == 0
            ? Container()
            : const Divider(
                thickness: 1,
                indent: 70,
              ),
        SizedBox(
          child: Row(
            children: <Widget>[
              const CircleAvatar(
                radius: 30,
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
                    const TextComonBase(text: "Lộc puho .....", colorText: 0xff7d8997, sizeText: 15)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
