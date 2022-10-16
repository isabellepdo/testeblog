class Post < ApplicationRecord

	belongs_to :user

	validates_presence_of :conteudo, message: 'Você não pode fazer um post em branco'

	def pode_editar_excluir_post? user
		if user.perfil.administrador? || self.user == user
			return true 
		else
			return false
		end
	end

end
