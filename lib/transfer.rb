class Transfer
  attr_reader :sender, :receiver, :transfer_amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if @status == "open" && transfer_amount < sender.balance
      true 
    else 
      false 
    end 
  end
    
end
