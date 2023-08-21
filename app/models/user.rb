class User
  WRONG_PASSWORD = "Wrong password, sorry!"

  def bad
    Rails.logger.warn(current_user.email)
  end

  def no_user
    raise "User doesn't exist #{user.email}"
  end
end
