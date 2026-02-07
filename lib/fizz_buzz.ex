defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_flle_read()
  end

  def handle_flle_read({:ok, result}), do: result
  def handle_flle_read({:error, reason}), do: reason
end
