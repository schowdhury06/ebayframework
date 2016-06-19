require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'capybara/rspec/matchers'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

browser_name = 'firefox'

case browser_name
  when 'chrome'
    Capybara.register_driver :selenium do |app|
     $browser = Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

  when 'safari'
    Capybara.register_driver :selenium do |app|
      $browser = Capybara::Selenium::Driver.new(app, :browser => :safari)
    end

  else
    Capybara.register_driver :selenium do |app|
    $browser = Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end

end

Capybara.current_driver = :selenium