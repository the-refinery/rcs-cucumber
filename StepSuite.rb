module M
  def self.before(*names)
    names.each do |name|
      m = instance_method(name)
      define_method(name) do |*args, &block|
        yield
        m.bind(self).(*args, &block)
        if m.bind(self).call == true
          puts " " + name.to_s.green
        else
          puts " " + name.to_s.red
        end
      end
    end
  end
end

module M
  def given_i_am_on_the_homepage
    return true
  end
  
  def when_i_click_link
    return true
  end
  
  before(*instance_methods) {}
end

class StepSuite
  include M
end