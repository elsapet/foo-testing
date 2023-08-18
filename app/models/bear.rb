class Bear
  INTERNAL = "https://api.prod.company.internal"

  def internal_url
    url = "https://api.prod.company.internal"
    URI(url)
  end

  def unsafe
    Net::FTP.open("ftp.site.com") do |ftp|
      file = Tempfile.new("user_data")
      begin
        file << [user.email, user.gender]
        file.close

        ftp.puttextfile(file.path, "/users/123.json")
      ensure
        file.close!
      end
    end
  end
end