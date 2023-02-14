class Bear
  INTERNAL = "https://api.prod.company.internal"

  def internal_url
    url = "https://api.prod.company.internal"
    URI(url)
  end
end