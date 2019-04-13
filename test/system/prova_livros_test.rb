require "application_system_test_case"

class ProvaLivrosTest < ApplicationSystemTestCase
  setup do
    @prova_livro = prova_livros(:one)
  end

  test "visiting the index" do
    visit prova_livros_url
    assert_selector "h1", text: "Prova Livros"
  end

  test "creating a Prova livro" do
    visit prova_livros_url
    click_on "New Prova Livro"

    fill_in "Aluno", with: @prova_livro.aluno_id
    fill_in "Livro", with: @prova_livro.livro_id
    fill_in "Nota", with: @prova_livro.nota
    click_on "Create Prova livro"

    assert_text "Prova livro was successfully created"
    click_on "Back"
  end

  test "updating a Prova livro" do
    visit prova_livros_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @prova_livro.aluno_id
    fill_in "Livro", with: @prova_livro.livro_id
    fill_in "Nota", with: @prova_livro.nota
    click_on "Update Prova livro"

    assert_text "Prova livro was successfully updated"
    click_on "Back"
  end

  test "destroying a Prova livro" do
    visit prova_livros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prova livro was successfully destroyed"
  end
end
