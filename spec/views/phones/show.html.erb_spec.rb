require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Manufacturer/)
    expect(rendered).to match(/Chip Type/)
    expect(rendered).to match(/So Version/)
    expect(rendered).to match(/Screen Type/)
    expect(rendered).to match(/Display Size/)
    expect(rendered).to match(/Resolution/)
    expect(rendered).to match(/Back Cam/)
    expect(rendered).to match(/Front Cam/)
    expect(rendered).to match(/Ram/)
    expect(rendered).to match(/Processor/)
    expect(rendered).to match(/Memory Int/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Modaly/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
