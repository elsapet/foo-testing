class User
  WRONG_PASSWORD = "Wrong password, sorry!"

  def bad
    Rails.logger.warn("hello")
  end
end
