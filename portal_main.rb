require './portal_base_object'
require './login_modal'
require './portal_landing_object'
require './learn_header_object'

class PortalMainObject < PortalBaseObject
  include PortalLandingObject
  include LoginModalObject
  include LearnHeaderObject


  def initialize()
    puts "Initializing"
  end

  private
  def verify_element(element)

  end


  def wait_for(seconds=25)
    puts "Waiting"
    Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  end

end