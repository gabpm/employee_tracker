require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/employee")
require("pg")

get('/') do
  @employees = Employee.all()
  erb(:index)
end

post('/employee') do
  name = params.fetch('name')
  @employee = Employee.new({:name => name, :division_id => 1})
  @employee.save()
  redirect('/')
end
