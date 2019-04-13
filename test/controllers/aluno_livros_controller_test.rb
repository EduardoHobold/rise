require 'test_helper'

class AlunoLivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aluno_livro = aluno_livros(:one)
  end

  test "should get index" do
    get aluno_livros_url
    assert_response :success
  end

  test "should get new" do
    get new_aluno_livro_url
    assert_response :success
  end

  test "should create aluno_livro" do
    assert_difference('AlunoLivro.count') do
      post aluno_livros_url, params: { aluno_livro: { aluno_id: @aluno_livro.aluno_id, livro_id: @aluno_livro.livro_id } }
    end

    assert_redirected_to aluno_livro_url(AlunoLivro.last)
  end

  test "should show aluno_livro" do
    get aluno_livro_url(@aluno_livro)
    assert_response :success
  end

  test "should get edit" do
    get edit_aluno_livro_url(@aluno_livro)
    assert_response :success
  end

  test "should update aluno_livro" do
    patch aluno_livro_url(@aluno_livro), params: { aluno_livro: { aluno_id: @aluno_livro.aluno_id, livro_id: @aluno_livro.livro_id } }
    assert_redirected_to aluno_livro_url(@aluno_livro)
  end

  test "should destroy aluno_livro" do
    assert_difference('AlunoLivro.count', -1) do
      delete aluno_livro_url(@aluno_livro)
    end

    assert_redirected_to aluno_livros_url
  end
end
