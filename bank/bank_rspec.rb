require_relative 'bank'

RSpec.describe Bank_Account do
    it 'has a method for retrieving the checking account balance' do
        account1 = Bank_Account.new
        expect(account1.balance("checking")).to eq(100)
    end
end

RSpec.describe Bank_Account do
    it 'has a method for retrieving the total balance' do
        account2 = Bank_Account.new
        expect(account2.balance("total")).to eq(200)
    end
end

RSpec.describe Bank_Account do
    it 'has a method for withdrawing && error when not enough in account' do
        account3 = Bank_Account.new
        expect(account3.withdraw("checking", 100)).to eq(0)
        expect(account3.withdraw("savings", 100)).to eq(0)
        expect(account3.withdraw("checking", 200)).to eq("insufficient funds")
        expect(account3.withdraw("savings", 200)).to eq("insufficient funds")
    end
end

RSpec.describe Bank_Account do
    it 'errors when user tries to pull total_accounts' do
        account4 = Bank_Account.new
        expect{account4.total_accounts}.to raise_error(NoMethodError)
    end
end

RSpec.describe Bank_Account do
    it 'errors when user tries to set interest_rate' do
        account5 = Bank_Account.new
        expect{account5.interest_rate = 4}.to raise_error(NoMethodError)
    end
end

RSpec.describe Bank_Account do
    it 'errors when user tries to set any attribute' do
        account6 = Bank_Account.new
        account6.checking_balance = 300
        expect(account6.checking_balance).to eq(100)
    end
end
