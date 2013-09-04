class ApplicationController < ActionController::Base
  include CreateAndEdit
  protect_from_forgery
end
