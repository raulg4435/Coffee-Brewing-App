// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

// flutter drive --target=test_driver/app.dart

void main() {
  group('Homebrew Dripper App -', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.

    // RECIPE_SELECTION_SCREEN
    final coffeeRecipesText = find.byValueKey('coffee-recipes');
    final testRecipe1 = find.byValueKey('Test Recipe 1');
    final testRecipe2 = find.byValueKey('Test Recipe 2');
    final coffeeResourceLink = find.byValueKey('coffee-hyperlink');
    final grindersResourceLink = find.byValueKey('grinders-hyperlink');
    final kettlesResourceLink = find.byValueKey('kettles-hyperlink');
    final homebrewDripperResourceLink =
        find.byValueKey('homebrewDripper-hyperlink');

    // RECIPE_DETAIL SCREEN
    final backButton = find.byValueKey('backButton');
    final startButton = find.byValueKey('startButton');

    // RECIPE_STEPS SCREEN
    final stepsText = find.byValueKey('steps'); // The text that says 'Steps'

    // DONE SCREEN
    final doneScreenText = find.byValueKey('enjoy');
    final doneButton = find.byValueKey('doneButton');

    // global variable to modify delay time between steps
    const int tinyTimeInterval = 2;
    const int smallTimeInterval = 6;
    const int bigTimeInterval = 20;

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    group('Happy Paths:', () {
      test(
          'When the user taps on Test Recipe 1 and moves onto Recipe Detail Screen, and taps Start, and each step is shown with its respective countdown timer, then the user finally lands at Done Screen.',
          () async {
        // tap Test Recipe 1
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(testRecipe1);

        // tap Start
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(startButton);

        // check that countdown has started and we're at Recipe_Steps screen
        Future.delayed(const Duration(seconds: smallTimeInterval));
        expect(await driver.getText(stepsText), "Steps");

        // after sufficient time, should be at Done Screen
        Future.delayed(const Duration(seconds: bigTimeInterval));
        expect(await driver.getText(doneScreenText),
            "enjoy your amazing handmade coffee");

        // tap Done and return to Recipe Selection (home) screen
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(doneButton);
      });

      test(
          'When the user taps on Test Recipe 2 and moves onto Recipe Detail Screen, and taps Start, and each step is shown with its respective countdown timer, then the user finally lands at Done Screen.',
          () async {
        // tap Test Recipe 2
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(testRecipe2);

        // tap Start
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(startButton);

        // check that countdown has started and we're at Recipe_Steps screen
        Future.delayed(const Duration(seconds: smallTimeInterval));
        expect(await driver.getText(stepsText), "Steps");

        // after sufficient time, should be at Done Screen
        Future.delayed(const Duration(seconds: bigTimeInterval));
        expect(await driver.getText(doneScreenText),
            "enjoy your amazing handmade coffee");

        // tap Done and return to Recipe Selection (home) screen
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(doneButton);
      });

      test(
          'When the user chooses Test Recipe 1 and moves onto Recipe Detail Screen, and taps the Back Button, then they should return to previous Recipe Selection Screen.',
          () async {
        // tap Test Recipe 1
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(testRecipe1);

        // tap Back Button
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(backButton);

        // verify we are back at home screen
        Future.delayed(const Duration(seconds: smallTimeInterval));
        expect(await driver.getText(coffeeRecipesText), "Coffee Recipes");
      });

      test(
          'When the user is at Recipe Selection Screen, they should have access to 4 Resources hyperlinks they can click on.',
          () async {
        Future.delayed(const Duration(seconds: smallTimeInterval));
        expect(await driver.getText(coffeeResourceLink), "Coffee");
        expect(await driver.getText(grindersResourceLink), "Grinders");
        expect(await driver.getText(kettlesResourceLink), "Kettles");
        expect(await driver.getText(homebrewDripperResourceLink),
            "Homebrew Dripper");
      });
    });

    group('Sad Paths:', () {
      test(
          'When the user clicks on Test Recipe 1 and moves onto Recipe Detail Screen and taps Start and not enough time has elapsed, then they should still be at Recipe Steps screen and not at Done Screen.',
          () async {
        // tap Test Recipe 1
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(testRecipe1);

        // tap Start
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(startButton);

        // verify we are still at Recipe Steps screen
        Future.delayed(const Duration(seconds: tinyTimeInterval));
        expect(await driver.getText(stepsText), "Steps");

        // reach Done Screen and go back to home screen to continue tests
        Future.delayed(const Duration(seconds: bigTimeInterval));
        await driver.tap(doneButton);
      });

      test(
          'When the user clicks on Test Recipe 2 and moves onto Recipe Detail Screen and taps Start and not enough time has elapsed, then they should still be at Recipe Steps screen and not at Done Screen.',
          () async {
        // tap Test Recipe 2
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(testRecipe2);

        // tap Start
        Future.delayed(const Duration(seconds: smallTimeInterval));
        await driver.tap(startButton);

        // verify we are still at Recipe Steps screen
        Future.delayed(const Duration(seconds: tinyTimeInterval));
        expect(await driver.getText(stepsText), "Steps");
      });
    });
  });
}
