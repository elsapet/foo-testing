class Bear
  INTERNAL = "https://api.prod.company.internal"

  def internal_url
    url = "https://api.prod.company.internal"
    URI(url)
  end

  def sensitive_data_in_file_generation
    CSV.open("path/to/user.csv", "wb") do |csv|
      csv << ["email", "first_name", "last_name"]
      users.each do |user|
        csv << [
          user.email,
          user.first_name,
          user.last_name
        ]
      end
    end
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

    Net::FTP.open("example.com") do |ftp|
      ftp.login
      files = ftp.chdir('pub/lang/ruby/contrib')
      files = ftp.list('n*')
      ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)
    end
  end
end