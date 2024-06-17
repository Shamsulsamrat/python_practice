class Bank:
    def __init__(self,account_holder_name,account_no):
        self.account_holder_name=account_holder_name
        self.account_no=account_no
    def printname(self):
         print(f"The Account Holder name is {self.account_holder_name} and account number is {self.account_no}")


class SavingAccount(Bank):
    def __init__(self,account_holder_name,account_no,saving_account_number,balance):
        super().__init__(account_holder_name, account_no)  
        self.saving_account_number=saving_account_number
        self.balance=balance
        
    def printname(self):
        print(f"This is his {self.saving_account_number} and balance is {self.balance}")
  
class CurrentAccount(Bank):
    def __init__(self,account_holder_name,account_no,current_account_number,balance):
        super().__init__(account_holder_name, account_no)  
        self.current_account_number=current_account_number  
        self.balance=balance   
    
    def printname(self):
        print(f"This is his {self.current_account_number} and balance is {self.balance}")
  
bank=Bank("Shamsul Islam Samrat","151-123-9090986")
saving_account=SavingAccount("Shamsul Islam Samrat","151-123-9090986","321-123-90909090","120000")
current_account=CurrentAccount("Shamsul Islam Samrat","151-123-9090986","321-123-90909091","150000")
for i in [bank,saving_account,current_account]:
    i.printname()
