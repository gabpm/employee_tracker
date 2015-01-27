class CreateEmployees < ActiveRecord::Migration
  def change
    create_table(:employees) do |d|
      d.column(:name, :string)
      d.column(:division_id, :integer)
    end
  end
end
