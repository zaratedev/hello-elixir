md5 = "./elixir.txt" |> File.read!() |> :erlang.md5()

IO.inspect(md5)

# phash2

data =
  1..100_000
  |> Enum.reduce(%{}, fn number, acc ->
    index = :erlang.phash2("some data - #{number}", 10)
    Map.update(acc, index, 1, &(&1 + 1))
  end)

  IO.inspect(data)
