require("rspec")
require("pg")
require("employee")
require("division")

DB = PG.connect({:dbname => 'employee_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM division *;")
    DB.exec("DELETE FROM employee *;")
  end
end
