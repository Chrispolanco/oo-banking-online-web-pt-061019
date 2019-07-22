class Transfer
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid?
    receiver.valid?
  end     
    
def execute_transaction
    if sender.valid? && receiver.valid?
      sender.balance -= amount
      receiver.balance += amount
    else
      "Transaction rejected. Please check your account balance."
    end
  end
    
end
