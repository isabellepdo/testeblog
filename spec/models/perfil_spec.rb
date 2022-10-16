require 'rails_helper'

RSpec.describe Perfil, type: :model do
  it { is_expected.to belong_to :user }

  describe 'Valida Atualização de Perfil' do
    context 'usuario deve ser de maior' do
      it 'se usuario for de menor retornar erro' do
        perfil = FactoryBot.create(:admin)
        perfil.update(idade: 10)
        perfil.validate
        expect(perfil.errors[:idade]).to include "Usuario deve ter mais que 18 anos."
      end
      it 'se usuario for de maior não retornar erro' do
        perfil = FactoryBot.create(:admin)
        perfil.update(idade: 20)
        perfil.validate
        expect(perfil.errors[:idade]).to_not include "Usuario deve ter mais que 18 anos."
      end
    end 
  end

end
