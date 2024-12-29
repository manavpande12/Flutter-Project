class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers); //Create A Copy Of Data in Variable
    shuffledList.shuffle(); // Then Shuffle 
    return shuffledList; 
    /* shuffle method change a orignal list in memory, 
    map method does not change orignal list so 
    We dont want our orignal data to get shuffled 
    bcoz logic is that all first option is a answer*/
  }
}
