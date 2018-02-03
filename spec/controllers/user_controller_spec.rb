require 'rails_helper'

describe UsersController, type: :controller do
  let(:user1) { User.create!(email: 'peter@example.com', password: '1234567890') }
  let(:user2) { User.create!(email: 'john@example.com', password: '0987654321') }

  describe 'GET #show' do

    context 'when a user logs in' do
      before do
        sign_in user1
      end

      it 'loads correct user details' do
        get :show, params: { id: user1.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq user1
      end

      it 'cannot load user details of other users' do
        get :show, params: { id: user2.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'when a user is not logged in' do
       it 'redirects to login' do
         get :show, params: { id: user1.id }
         expect(response).to redirect_to(new_user_session_path)
       end
    end

  end
end
