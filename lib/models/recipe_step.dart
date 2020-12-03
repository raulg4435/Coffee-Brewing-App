class RecipeStep {
  String text;
  int time;

  RecipeStep(text, time) {
    //add any rules to reject invalid values
    //for example, reject negative time amounts
    this.text = text;

    if (time > 0) {
      this.time = time;
    } else {
      this.time = 0;
    }
  }
}
