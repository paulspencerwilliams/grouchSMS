
RSpec.describe VisitorsController, :type => :controller do

  describe "GET welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to be_success
    end
  end

end
