// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Homebrew Dripper App', () {
    int time = 6; // global variable to modify delay time between steps

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
    final testRecipe1SelectedText = find.byValueKey('Test Recipe 1-selected');
    final testRecipe2SelectedText = find.byValueKey('Test Recipe 2-selected');
    final startButton = find.byValueKey('startButton');

    // RECIPE_STEPS SCREEN
    final timerText = find.byValueKey('timer');
    final currentStepText = find.byValueKey('step');

    // DONE SCREEN
    final doneScreenText = find.byValueKey('enjoy');
    final doneButton = find.byValueKey('doneButton');

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

    // TODO: Complete Integration Tests Happy Paths
    // flutter drive --target=test_driver/app.dart

    // PRO TIP:
    // Use the `driver.getText` method to verify text
    // expect(await driver.getText(coffeeRecipesText), "Coffee Recipes");

    group('Happy Paths:', () {
      test(
          'When the user taps on Test Recipe 1 and moves onto Recipe Detail Screen, and taps Start, and each step is shown with its respective countdown timer, then the user finally lands at Done Screen.',
          () async {
        // TODO: Test a recipe
      });

      test(
          'When the user taps on Test Recipe 2 and moves onto Recipe Detail Screen, and taps Start, and each step is shown with its respective countdown timer, then the user finally lands at Done Screen.',
          () async {
        // TODO: Test a recipe
      });

      test(
          'When the user chooses Test Recipe 1 and moves onto Recipe Detail Screen, and taps the Back Button, then they should return to previous Recipe Selection Screen.',
          () async {
        // TODO: Test back button
      });

      test(
          'When the user clicks on Resource hyperlink `Grinders`, then a browser opens',
          () async {
        // TODO: Test that a hyperlink opens? How to close it, though?
        // Maybe just test that it is clickable OR test that it is simply a hyperlink.
      });
    });

    // TODO: Complete Integration Tests Sad Paths

    group('Sad Paths:', () {
      test(
          'When the user clicks on Test Recipe 1 and not enough time has elapsed, then they should still be Recipe Steps screen and not at Done Screen.',
          () async {
        // TODO: Test that recipe doesn't terminate too early
      });

      test(
          'When the user clicks on Test Recipe 1 and not enough time has elapsed, then they should still be Recipe Steps screen and not at Done Screen.',
          () async {
        // TODO: Test that recipe doesn't terminate too early
      });
    });
  });
}
