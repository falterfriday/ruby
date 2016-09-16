class Bank_Account
    attr_accessor :account_number, :checking_balance, :savings_balance
    @@total_accounts = 0
    private
        def initialize
            @@total_accounts += 1
            @account_num = new_account_num
            @checking_balance = 100
            @savings_balance = 100
            @interest_rate = 1
            self
        end
    public
        def balance(account)
            if account == "checking"
                @checking_balance
            elsif account == "savings"
                @savings_balance
            elsif account == "total"
                @savings_balance + @checking_balance
            end
        end
        def deposit(account, amount)
            if account == "checking"
                @checking_balance += amount
            elsif account == "savings"
                @saving_balance += amount
            end
        end
        def withdraw(account, amount)
            if account == "checking"
                if @checking_balance - amount < 0
                    "insufficient funds"
                else
                    @checking_balance -= amount
                end
            elsif account == "savings"
                if @savings_balance - amount < 0
                    "insufficient funds"
                else
                    @savings_balance -= amount
                end
            end
        end

        def account_information
            puts "Your account number: #{@account_num}"
            puts "Your total balance: #{balance("total")}"
            puts "Your checking account balance: #{balance("checking_balance")}"
            puts "Your interest rate: #{@interest_rate}%"
        end

    private

        def new_account_num
            randNumber = rand*10**6
            randNumber.floor
        end
end
#
# account = Bank_Account.new
# puts account.interest_rate
