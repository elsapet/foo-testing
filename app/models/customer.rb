class Customer
  PASSWORD = "Please enter your password:"

  def bad
    customer = Customer.where(id: 1).first
    Rails.logger.info(customer.email)
  end
end
