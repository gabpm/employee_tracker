class Division

  @@divisions = []
  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end

  define_singleton_method(:all) do
    @@divisions
  end

  define_method(:save) do
    @@divisions.push(self)
  end

  define_singleton_method(:find) do |id|
    found_name = nil
    Division.all().each() do |division|
      if division.id().eql?(id)
        found_name = division
      end
    end
    found_name
  end

  define_method(:==) do |another_division|
    self.name() == another_division.name()
  end








end
