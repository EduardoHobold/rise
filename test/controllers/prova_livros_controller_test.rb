require 'test_helper'

class ProvaLivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prova_livro = prova_livros(:one)
  end

  test "should get index" do
    get prova_livros_url
    assert_response :success
  end

  test "should get new" do
    get new_prova_livro_url
    assert_response :success
  end

  test "should create prova_livro" do
    assert_difference('ProvaLivro.count') do
      post prova_livros_url, params: { prova_livro: { aluno_id: @prova_livro.aluno_id, livro_id: @prova_livro.livro_id, nota: @prova_livro.nota } }
    end

    assert_redirected_to prova_livro_url(ProvaLivro.last)
  end

  test "should show prova_livro" do
    get prova_livro_url(@prova_livro)
    assert_response :success
  end

  test "should get edit" do
    get edit_prova_livro_url(@prova_livro)
    assert_response :success
  end

  test "should update prova_livro" do
    patch prova_livro_url(@prova_livro), params: { prova_livro: { aluno_id: @prova_livro.aluno_id, livro_id: @prova_livro.livro_id, nota: @prova_livro.nota } }
    assert_redirected_to prova_livro_url(@prova_livro)
  end

  test "should destroy prova_livro" do
    assert_difference('ProvaLivro.count', -1) do
      delete prova_livro_url(@prova_livro)
    end

    assert_redirected_to prova_livros_url
  end
end
