FactoryBot.define do
	factory :post do
		conteudo { "MyText" }
		user_id { User.find_by( email: 'comum@email.com').try(:id) or FactoryBot.create( :user_comum ).id }
	end
end
