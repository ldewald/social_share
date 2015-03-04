require 'social_share/version'
require 'social_share/helper'

module SocialShare
  class Engine < Rails::Engine
    ActionView::Base.send(:include, SocialShare::Helper)
  end
end
