import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:virtual_cards/rounded_button.dart';

class WSOP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "WSOP",
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
            image: AssetImage('images/wsop.jpg'),
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
                      androidPackageName: 'com.playtika.wsop.gp',
                      appStoreLink:
                          'https://play.google.com/store/apps/details?id=com.playtika.wsop.gp',
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
            )
          ],
        ),
      ),
    );
    ;
  }
}
