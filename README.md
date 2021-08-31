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

## User stories

```
As a customer
so that I can store money at the bank
I'd like to deposit money and see my balance increase by that amount.
```

```
As a customer
so that I can take money out of the bank
I'd like to withdraw money and see my balance decrease by that amount.
```

```
As a customer
so that I can know what money has being going into and out from my account
I'd like to be able to print a bank statement that shows the date and amount each time I deposit or withdraw money, as well as the balance.
```

## Domain model

|   BankAccount    |
| :--------------: |
|       date       |
|      credit      |
|      debit       |
|     balance      |
| ---------------- |
|     credit()     |
|     debit()      |
|   statement()    |

## Running the program

First clone the repo onto your local machine:

```
git clone https://github.com/pav0107/bank-tech-test.git
```

Next, open the command line and run the following:

```
ruby bank_program.rb
```

You'll then be asked the following:

```
Please select from the following:
Deposit
Withdraw
Print Statement
```

- The three options can be written in any combination of upper and lowercase, but misspellings or other words will bring up the options again.

- If depositing or withdrawing, you'll be asked how much and then receiving a thank you and confirmation, followed by the three initial options. If zero or any non-integer is entered an error message will appear.

- If printing a statement, the statement will appear, followed by the initial three options.

## Running tests

```
rspec
```

### Checking test coverage

```
open coverage/index.html
```

### Running the linter

```
rubocop
```
