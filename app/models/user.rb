class User
  WRONG_PASSWORD = "Wrong password, sorry!"

  def bad
    WebSocket::Handshake::Client.new(url: "ws://insecure.com")
    Rails.logger.warn("Hello")
  end
end
