my_data = %{name: "John Smith", age: 42, favorite_lang: :elixir}

IO.inspect(my_data)

IO.puts("Encode base 64")

base_64 = my_data |> :erlang.term_to_binary() |> Base.encode64()

IO.puts base_64

IO.puts("Decode base 64")

decode_64 = base_64 |> Base.decode64!() |> :erlang.binary_to_term([:safe])

IO.inspect(decode_64)
