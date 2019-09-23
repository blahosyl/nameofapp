require 'rails_helper'

describe UsersController , type: :controller do
  
  let(:user) { User.create!(first_name: "Test User", email:"test@gmail.com", password:"123455678") }
  let(:user2) { User.create!(first_name: "Another User", email:"another-test@gmail.com", password:"123455678") }

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end
      it "loads correct user details"
      get :show, params: { id: user.id }
      expect(response).to be_ok
      expect(assigns(:user)).to eq user
    end
  end

  context 'when a user is not logged in' do
    it 'redirects to login' do
      get :show, params: { id: user.id }
      expect(response).to redirect_to(new_user_session_path)
    end

    context 'when a second user tries to log in into another users page' do
      before do
        sign_in user2
      end

      it 'redirects to root_path' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
