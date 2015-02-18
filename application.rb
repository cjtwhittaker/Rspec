require 'Date'

class Person
  
   def initialize(first_name, surname, dob)
    @dob = Date.parse(dob)
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @emails = []
   end
  attr_accessor :dob, :first_name, :surname
  attr_reader :emails
  def fullname
    @first_name + " " + @surname
  end


  def add_email(email)
    @emails << email
  end

end
