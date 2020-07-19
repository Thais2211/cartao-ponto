class Empresa < ApplicationRecord
  belongs_to :user

  validates :cpf_cnpj, uniqueness: true
  validates_presence_of :razao_social, :ramo_atividade, :telefone, :email
end
