module UsersHelper
  
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=40"
    #image_tag(gravatar_url, alt: user.name, class: "gravatar")
    res = '<div class="user-gravatar" style="background:transparent url('+gravatar_url + ') 0px 0px no-repeat;"></div>'
    res.html_safe
  end
  
end
