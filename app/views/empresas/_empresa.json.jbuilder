json.extract! empresa, :id, :cpf_cpnpj, :razao_social, :ramo_atividade, :insc_estadual, :insc_municipal, :telefone, :celular, :email, :em_uso, :user_id, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)
