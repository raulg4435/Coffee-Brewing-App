import 'recipe_step.dart';

class CoffeeRecipe {
  String name; // e.g. "Sweet Maria's"
  int waterVolumeGrams;
  int coffeeVolumeGrams;
  String grindSize; // i.e. 'finely' OR 'coarse'
  String miscDetails; // e.g. "The original recipe: makes one delicious cup"
  List<RecipeStep> steps;

  CoffeeRecipe(name, coffeeVolumeGrams, waterVolumeGrams, grindSize,
      miscDetails, steps) {
    //add any rules to reject invalid values
    //for example, reject negative gram amounts

    if (name is! String) {
      throw ArgumentError();
    } else {
      this.name = name;
    }

    if (coffeeVolumeGrams < 0) {
      throw ArgumentError();
    } else {
      this.coffeeVolumeGrams = coffeeVolumeGrams;
    }

    if (waterVolumeGrams < 0) {
      throw ArgumentError();
    } else {
      this.waterVolumeGrams = waterVolumeGrams;
    }

    if (grindSize is! String) {
      throw ArgumentError();
    } else {
      this.grindSize = grindSize;
    }

    if (miscDetails is! String) {
      throw ArgumentError();
    } else {
      this.miscDetails = miscDetails;
    }

    if (steps is! List<RecipeStep>) {
      throw ArgumentError();
    } else {
      this.steps = steps;
    }
  }

  // HELPER FUNCTIONS to facilitate displaying the time for each step

  int secToMin(int t) {
    return t ~/ 60;
  }

  int secToSec(int t) {
    return t % 60;
  }

  int totalMin() {
    int time = 0;

    for (int i = 0; i < steps.length; i++) {
      time += steps[i].time;
    }

    return time ~/ 60;
  }

  int totalSec() {
    int time = 0;

    for (int i = 0; i < steps.length; i++) {
      time += steps[i].time;
    }

    return time % 60;
  }
}
