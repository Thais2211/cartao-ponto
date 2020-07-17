class Empresa < ApplicationRecord
  belongs_to :user

  validates :cpf_cnpj, uniqueness: true
  validates :razao_social, :ramo_atividade, :telefone, :email, presence: true
end
