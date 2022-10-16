json.extract! perfil, :id, :user_id, :nome, :idade, :tipo_de_perfil, :created_at, :updated_at
json.url perfil_url(perfil, format: :json)
