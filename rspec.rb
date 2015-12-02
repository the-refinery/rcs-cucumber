require "colorize"
require "selenium-webdriver"

class StepSuite
  def given_i_am_on_the_homepage
    return true
  end
end

class ScenarioSuite < StepSuite
  before :given_i_am_on_the_homepage do
  
  end

  def header_has_appropriate_social_media_links
    given_i_am_on_the_homepage
    return true
  end
  
  def product_lines_have_images
    given_i_am_on_the_homepage
    return true
  end
end

suite = ScenarioSuite.new
methods = ScenarioSuite.instance_methods(false)
methods.each do |method|
  puts method.to_s.blue
  ScenarioSuite.instance_method(method).bind(suite).call
end