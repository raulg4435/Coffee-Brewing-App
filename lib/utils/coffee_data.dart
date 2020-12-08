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
      "Water is essential, because you need it to make coffee",
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
      "If you'd like to know more about this recipe visit: ptscoffee.com",
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

// The 2 recipes below are used for integration testing and need to stay
// in the UI/program for that reason

CoffeeRecipe makeTestRecipe() {
  List<RecipeStep> steps = [
    RecipeStep("Add 360g water", 2),
    RecipeStep("Wait for it to bloom", 2),
    RecipeStep("Add 1000g coffee", 2),
    RecipeStep("Cover and wait", 2),
    RecipeStep("Stir", 2),
    RecipeStep("Start draining", 2),
  ];
  CoffeeRecipe recipe = CoffeeRecipe("Test Recipe 1", 22, 360,
      "finely ground coffee", "This is a test", steps);
  return recipe;
}

CoffeeRecipe makeTestRecipe2() {
  List<RecipeStep> steps = [
    RecipeStep("Add 240g water", 3),
    RecipeStep("Cover and wait", 3),
    RecipeStep("Stir", 3),
    RecipeStep("Cover and wait", 3),
    RecipeStep("Stir", 3),
  ];
  CoffeeRecipe recipe = CoffeeRecipe("Test Recipe 2", 22, 360,
      "coarse ground coffee", "This is a test 2", steps);
  return recipe;
}

List<CoffeeRecipe> getAllRecipes() {
  return [
    makeSweetMariasRecipe(),
    makeTexasCoffeeSchool(),
    makePtsCoffee(),
    makeHomeGrounds(),
    makeTestRecipe(),
    makeTestRecipe2()
  ];
}

class CoffeeData {
  static List<CoffeeRecipe> loadRecipes() {
    return getAllRecipes();
  }
}
