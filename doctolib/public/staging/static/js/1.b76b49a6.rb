class User
  WRONG_PASSWORD = "Wrong password, sorry!"

  def bad
    Rails.logger.warn(current_user.email)
  end
end
