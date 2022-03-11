require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validates' do
    subject { User.new(name: 'Tom', photo: 'Tom.png', bio: 'Teacher from Mexico.') }

    before { subject.save }

    it 'should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    # it 'return the three latest posts for a user' do
    #   expect(User).to eql 3
    # end

    it 'return all the posts for a user' do
      expect(User.count).to eql 0
    end
  end
end
