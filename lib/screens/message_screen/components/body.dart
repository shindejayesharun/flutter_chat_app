import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants.dart';
import 'package:flutter_chat_app/models/chat_message.dart';

import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,),
          child:ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context,index)=>Message(message: demeChatMessages[index])),
        )),
        ChatInputField()
      ],
    );
  }
}
