import pandas as pd

data = {
    'Name': ['John', 'Jane', 'Doe', 'Michael', 'Emma', 'David', 'Sophie', 'Chris', 'Olivia', 'Daniel'],
    'PIN': [4321, 9876, 2468, 1357, 8642, 9753, 3210, 4567, 7890, 1023],
    'Balance': [1500.25, 3000.75, 1200.50, 2500.00, 1800.25, 3200.50, 750.75, 12000.00, 4000.25, 600.50]
}

df = pd.DataFrame(data)

class BankSystem:
    
    def __init__(self):
        self.stage = 0
    
    def create_account(self):
        global df
        while True:
            username = input("\nEnter your Username")
            if username in df['Name'].values:
                print("\nUsername already exists. Please choose a different username.")
            else:
                pin = input("\nSet your 4 digit PIN")
                new_data = {'Name': [username], 'PIN' : [int(pin)], 'Balance': [0] }
                df_2 = pd.DataFrame(new_data)
                df=pd.concat([df,df_2],ignore_index =True)
                print("\nYou have successfully created your Account!")
                self.stage = 1
                break;

        
        
    def login(self, username, pin):   
        if username in df['Name'].values:
            correct_pin = df.loc[df['Name'] == username, 'PIN'].values[0]
            if correct_pin == int(pin):
                self.stage = 1
                print(f"\nLogin Successful!\n\nWelcome {username}!")
                login_option_1 = input("\nPlease select from below options\n1.Deposit Money\n2.Withdraw Money\n3.Check Balance")
                login_option = int(login_option_1)
                
                if login_option == 1:
                    object_bank_system.loginSuccessful_deposit(username)
                if login_option == 2:
                    object_bank_system.loginSuccessful_withdraw(username)
                if login_option == 3:
                    object_bank_system.loginSuccessful_balance(username)
                
            else:
                print("Either Username or Password is Wrong!/n/nPlease try again")
                self.stage = 0
        else:
            print("Either Username or Password is Wrong!/n/nPlease try again")
            self.stage = 0
        
    def loginSuccessful_deposit(self, username):
        deposit_amount_1 = input("Please enter deposit amount")
        deposit_amount = int(deposit_amount_1)
        df.loc[df['Name']==username, 'Balance'] += deposit_amount
        print(f"\nYou have successfully deposited Rs.{deposit_amount}/-")
            
    def loginSuccessful_withdraw(self, username):
        withdraw_amount_1 = input("Please enter withdraw amount")
        withdraw_amount = int(withdraw_amount_1)
        df.loc[df['Name']==username, 'Balance'] -= withdraw_amount
        print(f"\nYou have successfully withdrawed Rs.{withdraw_amount}/-")
        
    def loginSuccessful_balance(self,username):
        current_balance = df.loc[df['Name']==username, 'Balance'].values[0]
        print(f"\nYour Balance is Rs.{current_balance}/-")

object_bank_system = BankSystem() 

while object_bank_system.stage == 0:
    print("\nHi! How can I help you today?\n\nPress 1 For Account login \nPress 2 For New Account Creation \n")
    input_1 = input("\nPlease enter your option")
    user_input = int(input_1)
    
    if user_input ==1:
        print("\nYou have selected Account Login")
        login_username = input("\nEnter your Username")
        login_pin = input("\nEnter your PIN")
        object_bank_system.login(login_username,login_pin)
    if user_input ==2:
        print("\nYou have selected Account Creation")
        object_bank_system.create_account()
   