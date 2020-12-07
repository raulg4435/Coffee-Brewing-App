class RecipeStep {
  String text;
  int time; // seconds

  RecipeStep(text, time) {
    //add any rules to reject invalid values
    //for example, reject negative time amounts

    if (time < 0) {
      throw ArgumentError();
    } else {
      this.time = time;
    }
  }
}
