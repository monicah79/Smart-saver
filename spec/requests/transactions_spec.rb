require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  describe 'GET /transactions' do
    it 'redirects to sign-in if user is not logged in' do
      get transactions_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
