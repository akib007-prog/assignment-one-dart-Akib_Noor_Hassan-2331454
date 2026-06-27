// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
/**
 * EXPECTED OUTPUT:
 * Account: 12345, Holder: Alice, Type: Savings, Balance: 800.0
 * Account: 67890, Holder: Bob, Type: Checking, Balance: 400.0
 * Account: 11111, Holder: Charlie, Type: Savings, Balance: 2000.0
 * Insufficient funds for withdrawal of 1000.0 from account 67890
 */

// Create a BankAccount class with the following specifications:
class BankAccount {
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking

  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0
  // TODO: Implement the constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  // 3. Methods:
  //    - deposit(double amount): Add money to account
  // TODO: Implement the deposit method
  void deposit(double amount) {
    balance += amount;
  }

  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  // TODO: Implement the withdraw method
  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    } else {
      balance -= amount;
    }
  }

  //    - getBalance(): Return current balance
  // TODO: Implement the getBalance method
  double getBalance() {
    // TODO: Return the current balance
    return balance;
  }

  //    - displayAccountInfo(): Show account details
  // TODO: Implement the displayAccountInfo method
  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario

  // TODO: Create 3 bank accounts:
  var account1 = BankAccount("12345", "Alice", "Savings");
  var account2 = BankAccount("67890", "Bob", "Checking");
  var account3 = BankAccount("11111", "Charlie", "Savings");

  // TODO: Demonstrate depositing money:
  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);

  // TODO: Demonstrate withdrawing money:
  account1.withdraw(200.0);
  account2.withdraw(100.0);

  // TODO: Display account information for all accounts
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  // TODO: Demonstrate insufficient funds scenario:
  account2.withdraw(1000.0);
}
