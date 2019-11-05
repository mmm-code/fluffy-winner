RSpec.describe PollsController, type: :controller do
  describe "polls#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "polls#new action" do
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "polls#create action" do
    it "should successfully create a new poll in our database" do
      expect(response).to have_http_status(:success)
    end
    
    it "should properly deal with validation errors" do
      params.require(:poll).permit(:name, :laptop)
      b
    end
  end
end