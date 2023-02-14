class User
  def log_ip
    Rails.logger.info(current_user.ip_address)
  end

  def gravatar
    "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(current_user.name.to_s)}?s=100&d=monsterid"
  end
end