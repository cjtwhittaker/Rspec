require 'Date'

class Person
  
   def initialize(first_name, surname, dob = '')
    if dob != nil
      @dob = Date.parse(dob)
    else 
      dob = nil
    end
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @emails = []
    @phone_numbers = []
   end
  attr_accessor :dob, :first_name, :surname
  attr_reader :emails, :phone_numbers

  def fullname
    @first_name + " " + @surname
  end


  def add_email(email)
    @emails << email
  end

  def add_phone(phone)
    @phone_numbers << phone
  end

  def remove_email(v)
    @emails.delete_at(v)
  end

  def to_s
    return "#{fullname} was born on #{dob}. \n Their email addresses are: #{emails}.\n Their phone numbers are #{phone_numbers}"
  end
end



class FamilyMember < Person
  attr_accessor :relationship
  def initialise(relationship = "relative", *args)
    @relationship = relationship
    super
  end
end

class AddressBook
  #class to be able to add people to an address book
  attr_reader :contacts
  def initialize
    @contacts = []
  end

  def add(person)
    if person.is_a? Person
      @contacts << person
  else
    raise "Please enter a valid person"
  end
  end

  def list
    puts "Address Book"
    puts "------------"
    @contacts.each_with_index{|value, index| puts "Entry #{index + 1}: #{value}"}
  end

  def remove(person)

  end
end