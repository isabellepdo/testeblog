require 'rails_helper'

RSpec.describe "perfils/index", type: :view do
  before(:each) do
    assign(:perfils, [
      Perfil.create!(
        :user_id => 2,
        :nome => "Nome",
        :idade => 3,
        :tipo_de_perfil => 4
      ),
      Perfil.create!(
        :user_id => 2,
        :nome => "Nome",
        :idade => 3,
        :tipo_de_perfil => 4
      )
    ])
  end

  it "renders a list of perfils" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
