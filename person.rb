class Person
  def initialize(id, age, name = 'Uknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_accessor :name, :age
  attr_reader :id

  def can_use_services
    is_of_age && @parent_permission
  end

  private

  def of_age?
    @age > 18
  end
end
