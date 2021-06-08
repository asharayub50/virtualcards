import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:virtual_cards/rounded_button.dart';

class TeenPatti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Teen Patti Gold",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/teenpatti.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                RoundedButton(
                  color: Colors.purple,
                  title: 'Play Offline!',
                  onPressed: () async {
                    await LaunchApp.openApp(
                      androidPackageName: 'com.teenpatti.hd.gold',
                      appStoreLink:
                          'https://play.google.com/store/apps/details?id=com.teenpatti.hd.gold',
                      openStore: true,
                    );
                  },
                ),
                RoundedButton(
                  color: Colors.purple,
                  title: 'Play Online!',
                ),
                RoundedButton(
                  color: Colors.purple,
                  title: 'Settings',
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
