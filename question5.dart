// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐

// 1. Mixin Payable
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus; // Total salary
  }
  
  void processPayment(double amount) {
    print("Payment processed: $amount");
  }
}

// 2. Mixin Reportable
mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

// 3. Abstract Class Employee
abstract class Employee {
  String name;
  String id;
  String department;
  
  Employee(this.name, this.id, this.department);
  
  String getJobTitle();
  double getBaseSalary();
  
  void displayInfo() {
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

// 4. Concrete Classes
class Manager extends Employee with Payable, Reportable {
  int teamSize;
  
  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);
  
  @override
  String getJobTitle() {
    return "Manager";
  }
  
  @override
  double getBaseSalary() {
    return 8000.0;
  }
  
  @override
  void displayInfo() {
    super.displayInfo();
    print("Team Size: $teamSize");
    double totalSalary = calculateSalary(getBaseSalary(), 1000.0); // Example bonus
    print("Calculated Salary: $totalSalary");
    processPayment(totalSalary);
    print("Report: ${generateReport(name, department)}\n");
  }
}

class Developer extends Employee with Payable {
  String programmingLanguage;
  
  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);
  
  @override
  String getJobTitle() {
    return "Senior Developer";
  }
  
  @override
  double getBaseSalary() {
    return 6000.0;
  }
  
  @override
  void displayInfo() {
    super.displayInfo();
    print("Programming Language: $programmingLanguage");
    double totalSalary = calculateSalary(getBaseSalary(), 500.0); // Example bonus
    print("Calculated Salary: $totalSalary");
    processPayment(totalSalary);
    print("");
  }
}

void main() {
  // Create employees
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer developer = Developer("Alice Johnson", "D001", "IT", "Dart");
  
  // Display employee info and demonstrate salary, payment, and report
  manager.displayInfo();
  developer.displayInfo();
}
