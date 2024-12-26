require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:phone, Phone.new(
      :model => "MyString",
      :brand => "MyString",
      :manufacturer => "MyString",
      :chip_type => "MyString",
      :so_version => "MyString",
      :screen_type => "MyString",
      :display_size => "MyString",
      :resolution => "MyString",
      :back_cam => "MyString",
      :front_cam => "MyString",
      :ram => "MyString",
      :processor => "MyString",
      :memory_int => "MyString",
      :color => "MyString",
      :modaly => "MyString",
      :quantity => 1,
      :price => "9.99",
      :phone_arquivo => nil
    ))
  end

  it "renders new phone form" do
    render

    assert_select "form[action=?][method=?]", phones_path, "post" do

      assert_select "input[name=?]", "phone[model]"

      assert_select "input[name=?]", "phone[brand]"

      assert_select "input[name=?]", "phone[manufacturer]"

      assert_select "input[name=?]", "phone[chip_type]"

      assert_select "input[name=?]", "phone[so_version]"

      assert_select "input[name=?]", "phone[screen_type]"

      assert_select "input[name=?]", "phone[display_size]"

      assert_select "input[name=?]", "phone[resolution]"

      assert_select "input[name=?]", "phone[back_cam]"

      assert_select "input[name=?]", "phone[front_cam]"

      assert_select "input[name=?]", "phone[ram]"

      assert_select "input[name=?]", "phone[processor]"

      assert_select "input[name=?]", "phone[memory_int]"

      assert_select "input[name=?]", "phone[color]"

      assert_select "input[name=?]", "phone[modaly]"

      assert_select "input[name=?]", "phone[quantity]"

      assert_select "input[name=?]", "phone[price]"

      assert_select "input[name=?]", "phone[phone_arquivo_id]"
    end
  end
end
