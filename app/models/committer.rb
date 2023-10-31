class Committer
  def bad
    user = User.committers.where(id: 1).first
    Rails.logger.info(user.email)
  end
end
