class Bear
  INTERNAL = "https://api.prod.company.internal"

  def log_bear
    Rails.logger.info("Bear email: #{user.email}")
  end

  def internal_url
    url = "https://api.prod.company.internal"
    URI(url)
  end
end