require 'rails_helper'
RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "renders the index view" do
        FactoryBot.create_list(:user, 10)
        get users_path
        expect(response).to render_template(:index)
      end
  end

  describe "get new_user_path" do  
    it "renders the :new template" do 
      get new_user_path
      expect(response.status).to eq(200)
    end
   end

#    describe "delete a user record" do
#     it "deletes a user record" do
#       user = FactoryBot.create(:user)
#       delete user_path(id: user.id)
#       expect(response).to redirect_to root_path
#     end
#   end
  
 
  
end
