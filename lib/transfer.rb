class Transfer
  attr_reader :sender, :receiver, :transfer_amount
  
  def initialize(sender, receiver, transfer_amount)
    @sender = sender 
    @receiver = receiver
    @transer_amount = transer_amount
    @status = "pending"
  end
  
  def valid? 
    
end
