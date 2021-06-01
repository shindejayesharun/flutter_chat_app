import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/primary_button.dart';
import 'package:flutter_chat_app/constants.dart';

class FilledOutlineButton extends StatelessWidget {
  final bool isFilled;
  final VoidCallback press;
  final String text;

  const FilledOutlineButton({Key key, this.isFilled = false,@required this.press,@required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white)
      ),
      elevation: isFilled ? 2 : 0,
      color: isFilled ? Colors.white : Colors.transparent,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kContentColorLightTheme : Colors.white,
          fontSize: 12
        ),
      ),
    );
  }
}
