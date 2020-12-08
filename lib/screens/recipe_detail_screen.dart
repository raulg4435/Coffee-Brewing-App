import 'package:flutter/material.dart';
import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/models/recipe_step.dart';
import 'package:homebrew_dripper/screens/recipe_selection_screen.dart';
import 'package:homebrew_dripper/screens/recipe_steps_screen.dart';
import 'package:homebrew_dripper/utils/styling.dart';

class RecipeDetailScreen extends StatelessWidget {
  CoffeeRecipe recipe;

  RecipeDetailScreen(this.recipe);

  Styling s = Styling();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s.secondary(),
      appBar: AppBar(
          backgroundColor: s.secondary(),
          elevation: 0,
          leading: IconButton(
              key: Key("backButton"),
              icon: Icon(
                Icons.arrow_back_ios,
                color: s.primary(),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipeSelectionScreen()));
              })),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: s.myBoxDecoration(),
                    child: Column(
                      children: [
                        Text(recipe.name,
                            key: Key("${recipe.name}-selected"),
                            style: s.subtitle(s.primary(), 18)),
                        Divider(
                          color: s.primary(),
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                        ),
                        Text(
                            "${recipe.coffeeVolumeGrams}g - ${recipe.grindSize}",
                            key: Key("coffee-details"),
                            style: s.subtitle(s.primary(), 14)),
                        Text(
                          "${recipe.waterVolumeGrams}g - water",
                          key: Key("water"),
                          style: s.subtitle(s.primary(), 14),
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: 30,
                          thickness: 10,
                        ),
                        Text(
                          "${recipe.miscDetails}",
                          key: Key("miscDetails"),
                          style: s.textItalics(s.primary(), 10),
                        ),
                      ],
                    )),
                Divider(
                  color: Colors.transparent,
                ),
                Container(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.values[4],
                      children: [
                        Text("Steps",
                            key: Key("steps"),
                            style: s.subtitle(s.primary(), 14)),
                        Divider(),
                        Text("Total: ${recipe.totalMin()}:${recipe.totalSec()}",
                            key: Key("totalTime"),
                            style: s.subtitle(s.primary(), 14)),
                      ],
                    ),
                    for (RecipeStep step in recipe.steps)
                      Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 50),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 20),
                          decoration: s.myBoxDecoration(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${step.text}",
                                      style: s.subtitle(s.primary(), 12)),
                                  Divider(
                                    color: Colors.transparent,
                                  ),
                                  Text(
                                      "${recipe.secToMin(step.time)}:${recipe.secToSec(step.time)} ",
                                      style: s.subtitle(s.primary(), 12)),
                                ],
                              ),
                            ],
                          )),
                  ],
                )),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              width: 280,
              color: Colors.transparent,
              child: RaisedButton(
                key: Key("startButton"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Start",
                  style: s.text(s.quinary(), 14),
                ),
                color: s.primary(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipeStepsScreen(recipe)),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
