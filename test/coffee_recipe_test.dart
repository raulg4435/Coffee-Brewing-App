import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/models/recipe_step.dart';
import 'package:test/test.dart';

void main() {
  // Test valid inputs
  test('creates a valid coffee recipe', () {
    // make a coffee recipe and
    // check that it has the right data
    List<RecipeStep> steps = [
      RecipeStep("Add 360g water", 30),
      RecipeStep("Cover and wait", 90),
      RecipeStep("Stir", 15),
      RecipeStep("Cover and wait", 75),
      RecipeStep("Stir", 15),
    ];
    var recipe = CoffeeRecipe("Sweet Maria's", 22, 360, 'finely',
        "The original recipe: makes one delicious cup", steps);

    expect(recipe.name, "Sweet Maria's");
    expect(recipe.coffeeVolumeGrams, 22);
    expect(recipe.waterVolumeGrams, 360);
    expect(recipe.grindSize, "finely");
    expect(recipe.miscDetails, "The original recipe: makes one delicious cup");
    expect(recipe.steps.length, 5);
  });

  // Test invalid inputs

  List<RecipeStep> goodSteps = [
    RecipeStep("Add 360g water", 30),
    RecipeStep("Cover and wait", 90),
    RecipeStep("Stir", 15),
    RecipeStep("Cover and wait", 75),
    RecipeStep("Stir", 15),
  ];

  test('throw ArgumentError on Recipe name that is not a String', () {
    expect(
        () => CoffeeRecipe(0, 22, 360, 'finely',
            "The original recipe: makes one delicious cup", goodSteps),
        throwsArgumentError);
  });

  test('throw ArgumentError on Recipe water-volume that is negative', () {
    expect(
        () => CoffeeRecipe("Sweet Maria's", -1, 360, 'finely',
            "The original recipe: makes one delicious cup", goodSteps),
        throwsArgumentError);
  });

  test('throw ArgumentError on Recipe coffee-volume that is negative', () {
    expect(
        () => CoffeeRecipe("Sweet Maria's", 22, -1, 'finely',
            "The original recipe: makes one delicious cup", goodSteps),
        throwsArgumentError);
  });

  test('throw ArgumentError on Recipe coffee grind-size that is not a String',
      () {
    expect(
        () => CoffeeRecipe("Sweet Maria's", 22, 360, 3.14,
            "The original recipe: makes one delicious cup", goodSteps),
        throwsArgumentError);
  });

  test('throw ArgumentError on Recipe misc-details that is not a String', () {
    expect(
        () => CoffeeRecipe("Sweet Maria's", 22, 360, 'finely', 3.14, goodSteps),
        throwsArgumentError);
  });
}
