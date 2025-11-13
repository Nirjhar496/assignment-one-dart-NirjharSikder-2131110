// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐

class BankAccount {
  // 1. Properties
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking
  
  // 2. Constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;
  
  // 3. Methods
  void deposit(double amount) {
    balance += amount; // Add amount to balance
  }
  
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    }
  }
  
  double getBalance() {
    return balance; // Return current balance
  }
  
  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

void main() {
  // Create 3 bank accounts
  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11111", "Charlie", "Savings");
  
  // Deposit money
  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);
  
  // Withdraw money
  account1.withdraw(200.0);
  account2.withdraw(100.0);
  
  // Display account info
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
  
  // Demonstrate insufficient funds
  account2.withdraw(1000.0); // Should print insufficient funds message
}
