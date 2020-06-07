require "application_system_test_case"

class EmpresasTest < ApplicationSystemTestCase
  setup do
    @empresa = empresas(:one)
  end

  test "visiting the index" do
    visit empresas_url
    assert_selector "h1", text: "Empresas"
  end

  test "creating a Empresa" do
    visit empresas_url
    click_on "New Empresa"

    fill_in "Celular", with: @empresa.celular
    fill_in "Cpf cpnpj", with: @empresa.cpf_cpnpj
    check "Em uso" if @empresa.em_uso
    fill_in "Email", with: @empresa.email
    fill_in "Insc estadual", with: @empresa.insc_estadual
    fill_in "Insc municipal", with: @empresa.insc_municipal
    fill_in "Ramo atividade", with: @empresa.ramo_atividade
    fill_in "Razao social", with: @empresa.razao_social
    fill_in "Telefone", with: @empresa.telefone
    fill_in "User", with: @empresa.user_id
    click_on "Create Empresa"

    assert_text "Empresa was successfully created"
    click_on "Back"
  end

  test "updating a Empresa" do
    visit empresas_url
    click_on "Edit", match: :first

    fill_in "Celular", with: @empresa.celular
    fill_in "Cpf cpnpj", with: @empresa.cpf_cpnpj
    check "Em uso" if @empresa.em_uso
    fill_in "Email", with: @empresa.email
    fill_in "Insc estadual", with: @empresa.insc_estadual
    fill_in "Insc municipal", with: @empresa.insc_municipal
    fill_in "Ramo atividade", with: @empresa.ramo_atividade
    fill_in "Razao social", with: @empresa.razao_social
    fill_in "Telefone", with: @empresa.telefone
    fill_in "User", with: @empresa.user_id
    click_on "Update Empresa"

    assert_text "Empresa was successfully updated"
    click_on "Back"
  end

  test "destroying a Empresa" do
    visit empresas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empresa was successfully destroyed"
  end
end
