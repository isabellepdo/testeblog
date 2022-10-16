class CreatePerfils < ActiveRecord::Migration[5.2]
  def change
    create_table :perfils do |t|
      t.integer :user_id
      t.string :nome
      t.integer :idade
      t.integer :tipo_de_perfil

      t.timestamps
    end
  end
end
