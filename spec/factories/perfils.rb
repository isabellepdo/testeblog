FactoryBot.define do
  factory :admin, class: Perfil do
		nome {"Admin da Silva"}
		tipo_de_perfil {1}
		idade { 18 }
		
		user_id { User.find_by( email: 'admin@email.com').try(:id) or FactoryBot.create( :user_admin ).id }
	end

  factory :comum, class: Perfil do
		nome {"Comun da Silva"}
		tipo_de_perfil {2}
		idade { 18 }
		
		user_id { User.find_by( email: 'comum@email.com').try(:id) or FactoryBot.create( :user_comum ).id }
	end
end
