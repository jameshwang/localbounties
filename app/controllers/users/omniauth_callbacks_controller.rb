class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def passthru
    send(params[:provider]) if providers.include?(params[:provider])
  end

  protected

  def facebook
    raise "Implement me for facebook"
  end

  def twitter
    raise "Implement me for twitter"
  end

  private

  def providers
    ["facebook", "twitter"]
  end
end