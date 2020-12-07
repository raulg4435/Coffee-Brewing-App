import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/models/recipe_step.dart';
import 'package:test/test.dart';

void main() {
  // Test valid inputs
  test('creates a valid recipe step', () {
    //make a recipe step and
    //check that it has the right data
    var step = RecipeStep('Cover and wait', 90);
    expect(step.text, 'Cover and wait');
    expect(step.time, 90);
  });

  // Test rejecting invalid inputs
  test('throw ArgumentError on step text that is not a String', () {
    expect(() => RecipeStep(3.14, 1), throwsArgumentError);
  });

  test('throw ArgumentError on time that is negative', () {
    expect(() => RecipeStep('Cover and wait', -1), throwsArgumentError);
  });
}
