require 'spec_helper'

describe 'Person' do
	describe "The person class in the address book" do
		it "should store and return personal information" do			
			person = Person.new "joe", "bloggs", "1 Jan 1990"

		  # Expected outcomes
			expect(person.dob).to be_a(Date)
			expect(person.dob.to_s).to be('1990-01-01')
			expect(person.first_name).to be('Joe')
			expect(person.surname).to be('Bloggs')
			expect(person.fullname).to be('Joe Bloggs')
		end
  end
end