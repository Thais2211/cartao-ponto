require 'test_helper'

class EmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_empresa_url
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post empresas_url, params: { empresa: { celular: @empresa.celular, cpf_cpnpj: @empresa.cpf_cpnpj, em_uso: @empresa.em_uso, email: @empresa.email, insc_estadual: @empresa.insc_estadual, insc_municipal: @empresa.insc_municipal, ramo_atividade: @empresa.ramo_atividade, razao_social: @empresa.razao_social, telefone: @empresa.telefone, user_id: @empresa.user_id } }
    end

    assert_redirected_to empresa_url(Empresa.last)
  end

  test "should show empresa" do
    get empresa_url(@empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_empresa_url(@empresa)
    assert_response :success
  end

  test "should update empresa" do
    patch empresa_url(@empresa), params: { empresa: { celular: @empresa.celular, cpf_cpnpj: @empresa.cpf_cpnpj, em_uso: @empresa.em_uso, email: @empresa.email, insc_estadual: @empresa.insc_estadual, insc_municipal: @empresa.insc_municipal, ramo_atividade: @empresa.ramo_atividade, razao_social: @empresa.razao_social, telefone: @empresa.telefone, user_id: @empresa.user_id } }
    assert_redirected_to empresa_url(@empresa)
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete empresa_url(@empresa)
    end

    assert_redirected_to empresas_url
  end
end
