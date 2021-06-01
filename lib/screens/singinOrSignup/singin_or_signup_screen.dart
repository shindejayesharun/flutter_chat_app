import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/primary_button.dart';
import 'package:flutter_chat_app/constants.dart';
import 'package:flutter_chat_app/screens/chats/chat_screen.dart';

class SignInOrSignUpScreen extends StatefulWidget {
  @override
  _SignInOrSignUpScreenState createState() => _SignInOrSignUpScreenState();
}

class _SignInOrSignUpScreenState extends State<SignInOrSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset(
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? "assets/images/Logo_light.png"
                      : "assets/images/Logo_dark.png"),
              Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen())),
              ),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary
              ,text: "Sign Up", press: () {}),
              Spacer(flex: 2,),
            ],
          ),
        ),
      ),
    );
  }
}
