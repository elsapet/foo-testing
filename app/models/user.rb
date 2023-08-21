class User
  WRONG_PASSWORD = "Wrong password, sorry!"

  def bad
    WebSocket::Handshake::Client.new(url: "ws://insecure.com")
    Rails.logger.warn("Hello")
  end

  def not_found
    raise "User doesn't exist #{user.email}"
  end
end
