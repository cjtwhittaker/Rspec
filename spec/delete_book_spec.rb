require 'spec_helper'

describe "AddressBook" do
  describe 'Testing the AddressBook' do

   # it 'should be able to add a person'

  #end
    it 'should be able to delete people by their first name' do
            person = FamilyMember.new "joe", "bloggs", "1 Jan 1990"
            book = AddressBook.new
            book.add person
            book.remove 'Joe'
            expect(book.contacts).not_to include person

    end
  end
end