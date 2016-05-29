class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_filter :load_tweets
  
  include SessionsHelper

  def load_tweets
#    @tweets = Twitter::REST::Client.bearer_token?
    @tweets = $client.user_timeline[0..4]
#    @tweets = $client.search("#harrypotter")
  end
end
