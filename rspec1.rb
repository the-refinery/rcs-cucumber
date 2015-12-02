require "colorize"
require "selenium-webdriver"

module M
  def self.before(*names)
    names.each do |name|
      m = instance_method(name)
      define_method(name) do |*args, &block|
        yield
        m.bind(self).(*args, &block)
        if m.bind(self).call(*args, &block) == true
          print " " + name.to_s.green
          args.each do |arg|
            print " " + arg.to_s.green
          end
          puts ""
        else
          print " " + name.to_s.red
          args.each do |arg|
            print " " + arg.to_s.red
          end
          puts ""
        end
      end
    end
  end
end

module M
  def given_i_am_on_the_homepage
    return true
  end
  
  def when_i_click_link(link)
    return true
  end
  
  def then_i_should_be_redirected_to_page
    return true
  end
  
  before(*instance_methods) {}
end

class StepSuite
  include M
end

class ScenarioSuite < StepSuite
  def header_has_appropriate_facebook_link
    given_i_am_on_the_homepage
    when_i_click_link "a"
    then_i_should_be_redirected_to_page
    return true
  end
  
  def header_has_appropriate_twitter_link
    given_i_am_on_the_homepage
    when_i_click_link "a"
    then_i_should_be_redirected_to_page
    return true
  end
  
  def header_has_appropriate_instagram_link
    given_i_am_on_the_homepage
    when_i_click_link "a"
    then_i_should_be_redirected_to_page
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
  puts method.to_s.cyan
  ScenarioSuite.instance_method(method).bind(suite).call
end