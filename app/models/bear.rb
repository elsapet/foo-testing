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

    Net::FTP.open("example.com") do |ftp|
      ftp.login
      files = ftp.chdir('pub/lang/ruby/contrib')
      files = ftp.list('n*')
      ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)
    end
  end
end