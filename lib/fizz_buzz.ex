defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> read_file()
    |> parse_content()
  end

  defp read_file(file_name) do
    case File.read(file_name) do
      {:ok, content} -> content
      {:error, reason} -> {:error, "File Error: #{reason}"}
    end
  end

  defp parse_content({:error, _} = error), do: error
  defp parse_content(content) do
    content
    |> String.split(",")
    |> Enum.map(&convert_and_trim/1)
  end

  defp convert_and_trim(item) do
    item
    |> String.trim()
    |> String.to_integer()
  end
end
