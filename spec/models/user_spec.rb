require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "#create" do
    it "creates a user" do
      user = User.create(email:'me@mail.com', password:'1234' , firstname:'Jane' , lastname:'Doe')
      expect(user.email).to equal(me@mail.com)
    end
end
