module ApplicantsHelper
  require 'digest/md5'

  def gravatar_url(user)
    'http://gravatar.com/avatar/' + Digest::MD5.hexdigest(user.email.strip.downcase) + '?s=200'
  end
end