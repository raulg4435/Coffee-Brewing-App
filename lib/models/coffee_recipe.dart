import 'recipe_step.dart';

class CoffeeRecipe {
  String name;
  int coffeeVolumeGrams;
  String grindSize;
  int waterVolumeGrams;
  String miscDetails;
  List<RecipeStep> steps;

  CoffeeRecipe(name, coffeeVolumeGrams, waterVolumeGrams, grindSize,
      miscDetails, steps) {
    //add any rules to reject invalid values
    //for example, reject negative gram amounts
    this.name = name;

    if (coffeeVolumeGrams > 0) {
      this.coffeeVolumeGrams = coffeeVolumeGrams;
    } else {
      this.coffeeVolumeGrams = 0;
    }

    if (waterVolumeGrams > 0) {
      this.waterVolumeGrams = waterVolumeGrams;
    } else {
      this.waterVolumeGrams = 0;
    }

    this.grindSize = grindSize;
    this.miscDetails = miscDetails;
    this.steps = steps;
  }

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
