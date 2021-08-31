# Bank tech test

This test was given on week 10 of Makers. Essentially, it's a command-line app that enables a user to deposit and withdraw money from a bank account as well as being able to print a bank statement.

## Specification

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Approach

- I decided to write my solution in Ruby and test in RSpec.
- I used Rubocop for my linter and SimpleCov to ensure good test coverage.

## To run program

First clone the repo onto your local machine:

```
git clone https://github.com/pav0107/bank-tech-test.git
```

Next, open the command line and create a bank account:

```
my_account = BankAccount.new
```

You can then use the following commands to deposit, withdraw or print a bank statement:

```
my_account.credit(10)
my_account.withdraw(10)
my_account.statement()
```

## To run tests

To run tests, the linter or look at test coverage, please use the respective commands in the command line.

```
rspec
```

```
open coverage/index.html
```

```
rubocop
```
