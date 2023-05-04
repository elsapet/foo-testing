class User
  has_secure_password
  validates :password, length: { minimum: 6 }

  def log_user
    current_user.email
    Rails.logger.info(current_user.email)
    Rails.logger.info(current_user.ip_address)
  end

  # def gravatar
  #   "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(current_user.name.to_s)}?s=100&d=monsterid"
  # end
  def private_key_armored
    if private_key.present? && !private_key.start_with?('-----BEGIN PGP PRIVATE KEY BLOCK-----')
      errors.add(:private_key, 'must be ASCII armored')
    end
  end

'-----BEGIN PGP PRIVATE KEY BLOCK-----'

  def private_key
    @private_key ||= '-----BEGIN PGP PRIVATE KEY BLOCK-----'
  end
end
