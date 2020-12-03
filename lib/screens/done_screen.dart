import 'package:flutter/material.dart';
import 'package:homebrew_dripper/screens/recipe_selection_screen.dart';
import 'package:homebrew_dripper/utils/styling.dart';

class DoneScreen extends StatelessWidget {
  Styling s = Styling();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: s.secondary(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 200, horizontal: 100),
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 0),
                  child: Column(
                    children: [
                      Text(
                        "enjoy your amazing handmade coffee",
                        key: Key("enjoy"),
                        textAlign: TextAlign.center,
                        style: s.text(s.primary(), 18),
                      ),
                    ],
                  ),
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    color: Colors.transparent,
                    child: RaisedButton(
                      key: Key("doneButton"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 0,
                      child: Text(
                        "done",
                        style: s.text(s.primary(), 14),
                      ),
                      color: s.secondary(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeSelectionScreen()),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
