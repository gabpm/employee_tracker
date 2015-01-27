require("spec_helper")


describe(Employee) do

  describe("#name") do
    it("takes users input and returns the name") do
      test_employee = Employee.new({:name => "Bob", :division_id => nil, :id => nil})
      expect(test_employee.name()).to(eq("Bob"))
    end
  end

  describe(".all") do
    it("it shows all employees") do
      expect(Employee.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an employee") do
      test_employee = Employee.new({:name => "Bob", :division_id => nil, :id => nil})
      test_employee.save()
      expect(Employee.all()).to(eq([test_employee]))
    end
  end

  describe("#division_id") do
    it("returns a division id") do
      test_employee = Employee.new({:name => "Bob", :division_id => nil, :id => nil})
      expect(test_employee.division_id()).to(eq(nil))
    end
  end

  describe("#id") do
    it("returns an id") do
      test_employee = Employee.new({:name => "Bob", :division_id => nil, :id => nil})
      expect(test_employee.id()).to(eq(nil))
    end
  end



end
