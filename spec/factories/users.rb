FactoryBot.define do
	factory :user do
		factory :user_admin, class: User do
			email {'admin@email.com'}
			password { '123123123'}
		end

		factory :user_comum, class: User do
			email {'comum@email.com'}
			password { '123123123'}
		end
	end
end
