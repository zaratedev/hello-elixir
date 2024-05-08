defmodule Example do
  def counter, do: counter(0)

  defp counter(value) do
    new_value = receive do
      {:get, pid} ->
        send(pid, value)
        value
      {:inc} ->
        value + 1
      {:dec} ->
        value - 1
      {:reset} ->
        0
    end

    new_value |> counter()
  end
end
