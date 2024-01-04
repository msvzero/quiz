class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  // The function begins by creating a new list called shuffledList using the List.of() method. The List.of() method creates a new list and populates it with the elements of the answers list. This is done to avoid modifying the original answers list directly.
  // The shuffle() method is then called on the shuffledList to randomize the order of its elements. The shuffle() method is a built-in Dart method that shuffles the list in-place.
  // Finally, the shuffled list (shuffledList) is returned as the result of the function.
  // That's it! The function takes the answers list, creates a copy of it, shuffles the copy, and returns the shuffled version

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
