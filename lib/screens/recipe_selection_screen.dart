import 'package:flutter/material.dart';
import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/screens/recipe_detail_screen.dart';
import 'package:homebrew_dripper/utils/coffee_data.dart';
import 'package:homebrew_dripper/utils/styling.dart';
import 'package:url_launcher/url_launcher.dart';

Styling s = Styling();

class RecipeSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s.secondary(),
      body: Center(
        child: ListView(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(
                    color: Colors.transparent,
                    height: 20,
                  ),
                  Text("Coffee Recipes",
                      key: Key("coffee-recipes"),
                      style: s.subtitleBold(s.primary(), 24)),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 0),
                      decoration: s.myBoxDecoration(),
                      child: Column(
                        children: [
                          RecipeList(),
                        ],
                      )),
                  Divider(
                    color: Colors.transparent,
                    height: 30,
                  ),
                  Text(
                    "Resources",
                    key: Key("resourse-list"),
                    style: s.subtitleBold(s.primary(), 24),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 0),
                      decoration: s.myBoxDecoration(),
                      child: Column(
                        children: [
                          ResourceList(),
                        ],
                      )),
                ])
          ],
        ),
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  List<CoffeeRecipe> recipes = CoffeeData.loadRecipes();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (CoffeeRecipe recipe in recipes)
          ListTile(
              key: Key("${recipe.name}"),
              title: Text(recipe.name, style: s.text(s.primary(), 14)),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecipeDetailScreen(recipe)),
                );
              })
      ],
    );
  }
}

// Integration Test only has to test that they are clickable links

class ResourceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Text("Coffee",
                key: Key('coffee-hyperlink'), style: s.text(s.primary(), 14)),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              const String toLaunch =
                  'https://www.homegrounds.co/best-coffee-beans-bucket-list/';
              launch(toLaunch);
            }),
        ListTile(
            title: Text("Grinders",
                key: Key('grinders-hyperlink'), style: s.text(s.primary(), 14)),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              const String toLaunch =
                  'https://nymag.com/strategist/article/best-coffee-grinders.html';
              launch(toLaunch);
            }),
        ListTile(
            title: Text("Kettles",
                key: Key('kettles-hyperlink'), style: s.text(s.primary(), 14)),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              const String toLaunch =
                  'https://www.homegrounds.co/5-best-pour-coffee-kettles-gooseneck-kettles-reviewed/';
              launch(toLaunch);
            }),
        ListTile(
            title: Text("Homebrew Dripper",
                key: Key('homebrewDripper-hyperlink'),
                style: s.text(s.primary(), 14)),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              const String toLaunch = 'https://prima-coffee.com/brew/coffee';
              launch(toLaunch);
            })
      ],
    );
  }
}
