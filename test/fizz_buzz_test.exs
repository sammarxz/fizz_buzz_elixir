defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "quando um ficheiro válido é fornecido, retorna uma lista processada" do
      file_name = "numbers.csv"
      File.write!(file_name, "1,2,3,5,15,abc")

      response = FizzBuzz.build(file_name)

      expected_response = {:ok, [1, 2, :fizz, :buzz, :fizz_buzz, :invalid_number]}

      assert response == expected_response

      File.rm!(file_name)
    end

    test "quando um ficheiro inexistente é fornecido, retorna um erro" do
      response = FizzBuzz.build("invalido.csv")

      expected_response = {:error, "Arquivo não encontrado!"}

      assert response == expected_response
    end
  end
end
