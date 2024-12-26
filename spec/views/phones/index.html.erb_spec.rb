require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Phone.create!(
        :model => "Model",
        :brand => "Brand",
        :manufacturer => "Manufacturer",
        :chip_type => "Chip Type",
        :so_version => "So Version",
        :screen_type => "Screen Type",
        :display_size => "Display Size",
        :resolution => "Resolution",
        :back_cam => "Back Cam",
        :front_cam => "Front Cam",
        :ram => "Ram",
        :processor => "Processor",
        :memory_int => "Memory Int",
        :color => "Color",
        :modaly => "Modaly",
        :quantity => 2,
        :price => "9.99",
        :phone_arquivo => nil
      ),
      Phone.create!(
        :model => "Model",
        :brand => "Brand",
        :manufacturer => "Manufacturer",
        :chip_type => "Chip Type",
        :so_version => "So Version",
        :screen_type => "Screen Type",
        :display_size => "Display Size",
        :resolution => "Resolution",
        :back_cam => "Back Cam",
        :front_cam => "Front Cam",
        :ram => "Ram",
        :processor => "Processor",
        :memory_int => "Memory Int",
        :color => "Color",
        :modaly => "Modaly",
        :quantity => 2,
        :price => "9.99",
        :phone_arquivo => nil
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => "Chip Type".to_s, :count => 2
    assert_select "tr>td", :text => "So Version".to_s, :count => 2
    assert_select "tr>td", :text => "Screen Type".to_s, :count => 2
    assert_select "tr>td", :text => "Display Size".to_s, :count => 2
    assert_select "tr>td", :text => "Resolution".to_s, :count => 2
    assert_select "tr>td", :text => "Back Cam".to_s, :count => 2
    assert_select "tr>td", :text => "Front Cam".to_s, :count => 2
    assert_select "tr>td", :text => "Ram".to_s, :count => 2
    assert_select "tr>td", :text => "Processor".to_s, :count => 2
    assert_select "tr>td", :text => "Memory Int".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Modaly".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
