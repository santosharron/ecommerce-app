import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ecommerceapp/main.dart';
import 'package:ecommerceapp/Screens/SSRegisterScreen.dart';
import 'package:ecommerceapp/Screens/SSSignInScreen.dart';
import 'package:ecommerceapp/utils/SSWidgets.dart';


class SSBuildScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment(0.1, 0.4),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(
                image: AssetImage("images/sneakerShopping/ic_sneaker_logo.png"),
                height: 100,
                width: 100,
                color: appStore.isDarkModeOn ? Colors.white : Colors.black,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16, width: 16),
              Text(
                "Build your own path with every step",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: primaryTextStyle(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.32, width: 16),
              sSAppButton(
                color: appStore.isDarkModeOn ? Colors.black : Colors.white,
                context: context,
                textColor: appStore.isDarkModeOn ? Colors.white : Colors.black,
                title: 'Sign in',
                onPressed: () {
                  finish(context);
                  SSSignInScreen().launch(context);
                },
              ),
              SizedBox(height: 16, width: 16),
              sSAppButton(
                context: context,
                title: 'Register',
                onPressed: () {
                  finish(context);
                  SSRegisterScreen().launch(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
