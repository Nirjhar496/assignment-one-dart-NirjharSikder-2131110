// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  
  // 2. Create a Map<String, int> to store student scores
  Map<String, int> studentScores = {}; 
  
  // 3. Use a for loop to assign random scores (60-100) to each student
  Random random = Random();
  for (String student in studentNames) {
    studentScores[student] = 60 + random.nextInt(41); // 60-100
  }
  
  // 4. Find and display:
  //    - Highest, lowest, and average scores
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double totalScore = 0.0;
  
  studentScores.forEach((student, score) {
    totalScore += score;
    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  });
  
  double averageScore = totalScore / studentScores.length;
  
  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}");
  
  // 5. Categorize students using switch statement
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";
    
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    
    print("$student: $score ($category)");
  }
}
