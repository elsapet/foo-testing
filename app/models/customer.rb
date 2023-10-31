class Customer
  PASSWORD = "Please enter your password:"

  # def bad
  #   customer = Customer.where(id: 1).first
  #   Rails.logger.info(customer.email)
  # end

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
