class Transfer
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if sender.status == "open" && amount < sender.balance && receiver.status == "open"
      true 
    else 
      false 
    end 
  end
    
end
