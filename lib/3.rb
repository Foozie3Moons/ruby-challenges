## Challenge 3 - Bank Transactions
#
# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit.
# Write three methods to perform these calculations and output the result to the user. Here is a sample output:
#
# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```
balance = 5000
finished = false

is_finished = {
  yes: true,
  no: false
}

def check_balance(balance)
  puts "Your current balance is #{balance}"
end

def withdraw(balance)
  puts "How much would you like to withdraw?"
  amount = gets.to_f
  balance -= amount
  puts "Your new balance is #{balance} after your withdraw of #{amount}"
  return balance
end

def deposit(balance)
  puts "How much would you like to deposit?"
  amount = gets.to_f
  balance += amount
  puts "Your new balance is #{balance} after your deposit of #{amount}"
  return balance
end

until finished do

  puts "What would you like to do? (deposit, withdraw, check_balance)"
  choice = gets.chomp

  if choice == "deposit"
    deposit(balance)
  elsif choice == "withdraw"
    withdraw(balance)
  elsif choice == "check_balance"
    check_balance(balance)
  end

  puts "Are you finished (yes/no)?"
  finished = is_finished[gets.chomp.to_sym]
end
