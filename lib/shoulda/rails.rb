require 'rubygems'
require 'active_support'
require 'shoulda'

require 'shoulda/active_record'     if defined? ActiveRecord::Base
require 'shoulda/action_controller' if defined? ActionController::Base
require 'shoulda/action_view'       if defined? ActionView::Base
require 'shoulda/action_mailer'     if defined? ActionMailer::Base

if (root = (defined?(Rails.root) && Rails.root) || RAILS_ROOT)
  Shoulda.autoload_macros root, File.join("vendor", "{plugins,gems}", "*")
end
