require 'rails_helper'

RSpec.describe Post, type: :model do
	it { is_expected.to belong_to :user }
	it { is_expected.to validate_presence_of :conteudo }

	describe 'Valida Conteudo do Post' do
		context 'conteudo do post não pode ser vazio' do
			it 'se conteudo for vazio retornar erro' do
				postagem = FactoryBot.create(:post)
				postagem.update(conteudo: '')
				postagem.validate
				expect(postagem.errors[:conteudo]).to include "Você não pode fazer um post em branco"
			end
			it 'se usuario for de maior não retornar erro' do
				postagem = FactoryBot.create(:post)
				postagem.validate
				expect(perfil.errors[:idade]).to_not include "Você não pode fazer um post em branco"
			end
		end 
	end
end
