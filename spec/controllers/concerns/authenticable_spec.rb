require 'rails_helper'

class Authentication < ActionController::Base
  include Authenticable
end

describe Authenticable, type: :controller do
  let(:authentication) { Authentication.new }
  subject { authentication }

  describe "#current_user" do
    before do
      @user = FactoryGirl.create :user
      request.headers["Authorization"] = @user.auth_token
      allow(authentication).to receive(:request).and_return(request)
    end
    it "returns the user from the authorization header" do
      expect(authentication.current_user.auth_token).to eql @user.auth_token
    end
  end

  # describe "#authenticate_with_token!" do
  #   before do
  #     @user = FactoryGirl.create :user
  #     allow(authentication).to receive(:current_user).and_return(nil)
  #     allow(response).to receive(:response_code).and_return(401)
  #     allow(response).to receive(:body).and_return({"errors": "Not authenticated"}.to_json)
  #     allow(authentication).to receive(:response).and_return(response)
  #   end

  #   it "render a json error message" do
  #   	authentication.authenticate_with_token!
  #     expect(json_response[:errors]).to eql "Not authenticated"
  #   end

  #   it { is_expected.to respond_with 401 }
  # end

  # Solución encontrada en https://github.com/kurenn/market_place_api/issues/5
  # No parece demasiado bueno
  describe '#authenticate_with_token' do
    before do
      allow(authentication).to receive(:current_user).and_return(nil)
      allow(authentication).to receive(:render) do |args|
        args
      end
    end

    it 'returns error' do
      expect(authentication.authenticate_with_token![:json][:errors]).to eq 'Not authenticated'
    end

    it 'returns unauthorized status' do
      expect(authentication.authenticate_with_token![:status]).to eq :unauthorized
    end
  end

   describe "#user_signed_in?" do
    context "when there is a user on 'session'" do
      before do
        @user = FactoryGirl.create :user
        allow(authentication).to receive(:current_user).and_return(@user)
      end

      it { should be_user_signed_in }
    end

    context "when there is no user on 'session'" do
      before do
        @user = FactoryGirl.create :user
        allow(authentication).to receive(:current_user).and_return(nil)
      end

      it { should_not be_user_signed_in }
    end
  end

end
