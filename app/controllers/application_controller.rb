class ApplicationController < ActionController::Base
    protect_from_forgery unless: -> { request.format.json? }
    before_action :authenticate_user!
    def home
    end
end

#IMPORTANTE
#Rails: Can't verify CSRF token authenticity when making a POST request

# It's important to remember that XML or JSON requests are also affected and if you're building 
# an API you should change forgery protection method in ApplicationController (by default: :exception):