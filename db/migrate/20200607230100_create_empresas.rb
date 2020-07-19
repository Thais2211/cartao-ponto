class CreateEmpresas < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas do |t|
      t.string :cpf_cnpj, null: false, unique: true
      t.string :razao_social, null: false
      t.string :ramo_atividade, null: false
      t.string :insc_estadual, null: false
      t.string :insc_municipal
      t.string :telefone
      t.string :celular
      t.string :email, null: false
      t.boolean :em_uso
      t.references :user, null: false, foreign_key: true
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
