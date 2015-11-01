require "rails_helper"

RSpec.describe LeadsImportsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/leads_imports").to route_to("leads_imports#index")
    end

    it "routes to #new" do
      expect(:get => "/leads_imports/new").to route_to("leads_imports#new")
    end

    it "routes to #show" do
      expect(:get => "/leads_imports/1").to route_to("leads_imports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/leads_imports/1/edit").to route_to("leads_imports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/leads_imports").to route_to("leads_imports#create")
    end

    it "routes to #update" do
      expect(:put => "/leads_imports/1").to route_to("leads_imports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/leads_imports/1").to route_to("leads_imports#destroy", :id => "1")
    end

  end
end
