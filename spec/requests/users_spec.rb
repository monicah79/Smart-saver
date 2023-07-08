require 'rails_helper'

RSpec.describe '/users', type: :request do
  before(:each) do
    @user = User.create(name: 'John', email: 'john@example.com', password: 'password')
  end
  context 'GET /users' do
    it 'validates format of name' do
      user = User.new(name: '', email: 'test@example.com', password: 'password')
      expect(user).not_to be_valid
      expect(user.errors[:name]).to include("can't be blank")
    end
  end
end
