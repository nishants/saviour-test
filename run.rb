require "selenium-webdriver"
require 'git'
require 'FileUtils'

target_repository = 'https://github.com/nishants/saviour.git'
file_path =  "file:///#{Dir.pwd}/tmp/app/app/index.html"
FileUtils.remove_dir("#{Dir.pwd}/tmp")


driver = Selenium::WebDriver.for :firefox
# driver.navigate.to "http://google.com"
Git.clone(target_repository, 'app', :path => 'tmp')
driver.navigate.to file_path
require 'pry'; binding.pry
