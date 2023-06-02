class User
  def ignore_me
    Rails.logger.info(current_user.account_id)
  end

  def bad
    Rails.logger.warn(current_user.email)
  end
end
