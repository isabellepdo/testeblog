require 'rails_helper'

RSpec.describe "perfils/new", type: :view do
  before(:each) do
    assign(:perfil, Perfil.new(
      :user_id => 1,
      :nome => "MyString",
      :idade => 1,
      :tipo_de_perfil => 1
    ))
  end

  it "renders new perfil form" do
    render

    assert_select "form[action=?][method=?]", perfils_path, "post" do

      assert_select "input[name=?]", "perfil[user_id]"

      assert_select "input[name=?]", "perfil[nome]"

      assert_select "input[name=?]", "perfil[idade]"

      assert_select "input[name=?]", "perfil[tipo_de_perfil]"
    end
  end
end
