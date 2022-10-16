require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_one(:perfil)}
	it { is_expected.to have_many(:posts)}
end
