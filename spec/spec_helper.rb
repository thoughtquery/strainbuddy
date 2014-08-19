require 'rspec'
require 'pg'
require 'pry'
require 'dispensary'
require 'strain'

DB = PG.connect({:dbname => "strainbuddy_test"})

RSpec.configure do |config|
  config.before(:each) do
    DB.exec("DELETE FROM strain *;")
    DB.exec("DELETE FROM dispensary *;")
    DB.exec("DELETE FROM strain_dispensary *;")
  end
end
