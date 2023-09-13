class BankAccount {
  String accountHolder;
  double balance;

  // Constructor to initialize the account
  BankAccount(this.accountHolder, this.balance);

  // Method to deposit money into the account
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('$accountHolder deposited $amount. New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('$accountHolder withdrew $amount. New balance: \$${balance.toStringAsFixed(2)}');
    } else if (amount <= 0) {
      print('Invalid withdrawal amount.');
    } else {
      print('Insufficient funds for withdrawal.');
    }
  }

  // Method to check the account balance
  void checkBalance() {
    print('$accountHolder\'s account balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  // Create a bank account for John with an initial balance of $1000
  var johnAccount = BankAccount('John', 1000.0);

  // Deposit $500 into John's account
  johnAccount.deposit(500.0);

  // Withdraw $200 from John's account
  johnAccount.withdraw(200.0);

  // Check John's account balance
  johnAccount.checkBalance();

  // Create a bank account for Alice with an initial balance of $1500
  var aliceAccount = BankAccount('Alice', 1500.0);

  // Withdraw $2000 from Alice's account (insufficient funds)
  aliceAccount.withdraw(2000.0);

  // Check Alice's account balance
  aliceAccount.checkBalance();
}