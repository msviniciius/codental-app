require "rails_helper"

RSpec.describe PhoneArquivosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/phone_arquivos").to route_to("phone_arquivos#index")
    end

    it "routes to #new" do
      expect(:get => "/phone_arquivos/new").to route_to("phone_arquivos#new")
    end

    it "routes to #show" do
      expect(:get => "/phone_arquivos/1").to route_to("phone_arquivos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/phone_arquivos/1/edit").to route_to("phone_arquivos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/phone_arquivos").to route_to("phone_arquivos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/phone_arquivos/1").to route_to("phone_arquivos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/phone_arquivos/1").to route_to("phone_arquivos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phone_arquivos/1").to route_to("phone_arquivos#destroy", :id => "1")
    end
  end
end
