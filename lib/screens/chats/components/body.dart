import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/filled_outline_button.dart';
import 'package:flutter_chat_app/constants.dart';
import 'package:flutter_chat_app/models/chat.dart';
import 'package:flutter_chat_app/screens/chats/components/chat_card.dart';
import 'package:flutter_chat_app/screens/message_screen/message_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FilledOutlineButton(
                press: () {},
                text: "Recent Message",
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              FilledOutlineButton(
                press: () {},
                text: "Active",
                isFilled: true,
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatCard(
                      chat: chatsData[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessageScreen())),
                    )))
      ],
    );
  }
}
