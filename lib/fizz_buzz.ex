defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> read_file()
    |> parse_content()
  end

  defp read_file(file_name) do
    case File.read(file_name) do
      {:ok, content} -> content
      {:error, _reason} -> {:error, "Arquivo não encontrado!"}
    end
  end

  defp parse_content({:error, _} = error), do: error
  defp parse_content(content) do
    result =
      content
      |> String.split(",", trim: true)
      |> Enum.map(&process_item/1)

    {:ok, result}
  end

  defp process_item(item) do
    item
    |> String.trim()
    |> Integer.parse()
    |> handle_parse()
  end

  defp handle_parse({number, _rest}), do: evaluate_numbers(number)
  defp handle_parse(:error), do: :invalid_number

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizz_buzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end
