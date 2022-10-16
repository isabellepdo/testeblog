require 'rails_helper'

RSpec.describe "perfils/edit", type: :view do
  before(:each) do
    @perfil = assign(:perfil, Perfil.create!(
      :user_id => 1,
      :nome => "MyString",
      :idade => 1,
      :tipo_de_perfil => 1
    ))
  end

  it "renders the edit perfil form" do
    render

    assert_select "form[action=?][method=?]", perfil_path(@perfil), "post" do

      assert_select "input[name=?]", "perfil[user_id]"

      assert_select "input[name=?]", "perfil[nome]"

      assert_select "input[name=?]", "perfil[idade]"

      assert_select "input[name=?]", "perfil[tipo_de_perfil]"
    end
  end
end
