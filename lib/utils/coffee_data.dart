import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/models/recipe_step.dart';

CoffeeRecipe makeSweetMariasRecipe() {
  List<RecipeStep> steps = [
    RecipeStep("Add 360g water", 30),
    RecipeStep("Cover and wait", 90),
    RecipeStep("Stir", 15),
    RecipeStep("Cover and wait", 75),
    RecipeStep("Stir", 15),
  ];
  CoffeeRecipe recipe = CoffeeRecipe(
      "Sweet Maria's",
      22,
      360,
      "finely ground coffee",
      "The original recipe: makes one delicious cup",
      steps);
  return recipe;
}

CoffeeRecipe makeTestRecipe() {
  List<RecipeStep> steps = [
    RecipeStep("Add 360g water", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
    RecipeStep("Cover and wait", 5),
    RecipeStep("Stir", 5),
  ];
  CoffeeRecipe recipe = CoffeeRecipe(
      "Test Recipe",
      22,
      360,
      "finely ground coffee",
      "The more about this recipe at: homegrounds.co",
      steps);
  return recipe;
}

CoffeeRecipe makeTexasCoffeeSchool() {
  List<RecipeStep> steps = [
    RecipeStep("Add 100g water", 10),
    RecipeStep("Stir", 10),
    RecipeStep("Wait for it to bloom", 10),
    RecipeStep("Add 240g water", 15),
    RecipeStep("Stir", 10),
    RecipeStep("Cover and wait", 90),
    RecipeStep("Start Draining", 15),
    RecipeStep("Stir", 15),
  ];
  CoffeeRecipe recipe = CoffeeRecipe(
      "Texas Coffee School",
      24,
      340,
      "coarse ground coffee",
      "The original recipe: makes one delicious cup",
      steps);
  return recipe;
}

CoffeeRecipe makePtsCoffee() {
  List<RecipeStep> steps = [
    RecipeStep("Add 50g water", 15),
    RecipeStep("Wait for it to bloom", 15),
    RecipeStep("Add 400g of water", 15),
    RecipeStep("Cover and wait", 75),
    RecipeStep("Start Draining", 15),
  ];
  CoffeeRecipe recipe = CoffeeRecipe(
      "PT's",
      25,
      450,
      "medium-coarse ground coffee",
      "The original recipe: makes one delicious cup",
      steps);
  return recipe;
}

CoffeeRecipe makeHomeGrounds() {
  List<RecipeStep> steps = [
    RecipeStep("Add 50g of water water", 15),
    RecipeStep("Wait for it to bloom", 15),
    RecipeStep("Add 345g of water", 10),
    RecipeStep("Cover and wait", 80),
    RecipeStep("Stir", 15),
    RecipeStep("Start Draining", 15),
  ];
  CoffeeRecipe recipe = CoffeeRecipe(
      "Homegrounds",
      23,
      345,
      "medium-coarse ground coffee",
      "More about this recipe at: homegrounds.co",
      steps);
  return recipe;
}

List<CoffeeRecipe> getAllRecipes() {
  return [
    makeSweetMariasRecipe(),
    makeTexasCoffeeSchool(),
    makePtsCoffee(),
    makeHomeGrounds()
  ];
}

class CoffeeData {
  static List<CoffeeRecipe> loadRecipes() {
    return getAllRecipes();
  }
}
