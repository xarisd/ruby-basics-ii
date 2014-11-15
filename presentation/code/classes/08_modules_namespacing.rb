module Accounting
  class Account
    def debit
    end
  end
end

module Authorization
  class Account
    def login
    end
  end
end

user_account = Authorization::Account.new

savings_account = Accounting::Account.new
