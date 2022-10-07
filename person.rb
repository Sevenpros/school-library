require './rental'
require './book'
require './nameable'
class Person < Nameable
  def initialize(age, name, parent_permission: true)
    super()
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_accessor(:name, :age, :rentals)
  attr_reader :id

  def can_use_services
    is_of_age && @parent_permission
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
