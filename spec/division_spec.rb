require("spec_helper")


describe(Division) do

  describe("#name") do
    it("returns a divisions name") do
      test_division = Division.new({:name => "Billing",:id => nil})
      expect(test_division.name()).to(eq("Billing"))
    end
  end

   describe(".all") do
     it("returns an empty array") do
       expect(Division.all()).to(eq([]))
     end
   end

   describe("#save") do
     it("saves divisions name") do
       test_division = Division.new({:name => "Billing",:id => nil})
       test_division.save()
       expect(Division.all()).to(eq([test_division]))
     end
   end

   describe("#id") do
     it("returns a divisions id") do
       test_division = Division.new({:name => "Billing",:id => nil})
       expect(test_division.id()).to(eq(nil))
     end
   end

   describe(".find") do
     it("looks for a category name and returns its id") do
       test_division = Division.new({:name => "Billing",:id => nil})
       test_division.save()
       test_division2 = Division.new({:name => "HR",:id => nil})
       test_division2.save()
       expect(Division.find(test_division2.id())).to(eq(test_division2))
     end
   end

   describe("#==") do
     it("is the same category if it has the same name") do
       division1 = Division.new({:name => "Billing", :id => nil})
       division2 = Division.new({:name => "Billing", :id => nil})
       expect(division1).to(eq(division2))
     end
   end



end
