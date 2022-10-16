require 'rails_helper'

RSpec.describe "perfils/show", type: :view do
  before(:each) do
    @perfil = assign(:perfil, Perfil.create!(
      :user_id => 2,
      :nome => "Nome",
      :idade => 3,
      :tipo_de_perfil => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
