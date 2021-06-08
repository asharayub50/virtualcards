import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:virtual_cards/rounded_button.dart';
import 'package:virtual_cards/screens/teen%20patti.dart';
import 'package:virtual_cards/screens/wsop.dart';
import 'package:virtual_cards/screens/zynga.dart';

class GameOpener extends StatefulWidget {
  @override
  _GameOpenerState createState() => _GameOpenerState();
}

class _GameOpenerState extends State<GameOpener> {
  @override
  void initState() {
    super.initState();
  }

  Color containerColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Game'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RoundedButton(
                width: 300,
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Zynga();
                      },
                    ),
                  );
                },
                title: "Zynga Poker",
              ),
              RoundedButton(
                width: 300,
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WSOP();
                      },
                    ),
                  );
                },
                title: "World Series of Poker",
              ),
              RoundedButton(
                width: 300,
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TeenPatti();
                      },
                    ),
                  );
                },
                title: "Teen Patti Gold",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
