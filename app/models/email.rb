class Email
  attr_reader :sender_name, :sender_address, :to, :subject, :body
  def initialize(attr)
    @sender_name = attr[:sender_name]
    @sender_address = attr[:sender_address]
    @to = attr[:to]
    @subject = attr[:subject]
    @body = attr[:body]
  end
end
