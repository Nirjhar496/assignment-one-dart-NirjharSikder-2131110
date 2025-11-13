// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐

// 1. Create variables of different data types
String name = "John Doe"; 
int age = 25; 
double height = 5.9; 
bool isStudent = true; 

// 2. Write a function called calculateBMI
double calculateBMI(double weight, double height) {
  return weight / (height * height); // BMI formula
}

// 3. Write a function called getGrade
String getGrade(int score) {
  if (score >= 90 && score <= 100) return "A";
  else if (score >= 80) return "B";
  else if (score >= 70) return "C";
  else if (score >= 60) return "D";
  else return "F";
}

void main() {
  // Variables are already initialized above
  // Calculate BMI and grade
  double bmi = calculateBMI(150.0, height); // Example: 150 lbs, 5.9 ft
  String grade = getGrade(85); // Example score

  // Use string interpolation to display the results
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: ${bmi.toStringAsFixed(1)}"); // rounded to 1 decimal
  print("Grade: $grade");
}
