class Perfil < ApplicationRecord

  belongs_to :user

  enum tipo_de_perfil: {
    administrador: 1,
    comum: 2
  }

  validate :usuario_e_de_maior?

  def usuario_e_de_maior?
		if self.idade < 18
			errors.add(:idade, "Usuario deve ter mais que 18 anos.")
		end
	end
end
