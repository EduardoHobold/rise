require "application_system_test_case"

class AlunoLivrosTest < ApplicationSystemTestCase
  setup do
    @aluno_livro = aluno_livros(:one)
  end

  test "visiting the index" do
    visit aluno_livros_url
    assert_selector "h1", text: "Aluno Livros"
  end

  test "creating a Aluno livro" do
    visit aluno_livros_url
    click_on "New Aluno Livro"

    fill_in "Aluno", with: @aluno_livro.aluno_id
    fill_in "Livro", with: @aluno_livro.livro_id
    click_on "Create Aluno livro"

    assert_text "Aluno livro was successfully created"
    click_on "Back"
  end

  test "updating a Aluno livro" do
    visit aluno_livros_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @aluno_livro.aluno_id
    fill_in "Livro", with: @aluno_livro.livro_id
    click_on "Update Aluno livro"

    assert_text "Aluno livro was successfully updated"
    click_on "Back"
  end

  test "destroying a Aluno livro" do
    visit aluno_livros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aluno livro was successfully destroyed"
  end
end
