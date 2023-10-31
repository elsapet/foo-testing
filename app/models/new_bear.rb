class NewBear
  INTERNAL = "https://api.prod.company.internal"

  def bad
    # some change
    Rails.logger.info(user.email)
    raise CustomException.new(user.email)
    raise "User doesn't exist #{user.email}"
  end

  def bad2
    customer = Customer.where(id: 1).first
    Rails.logger.info(customer.email)
  end
end