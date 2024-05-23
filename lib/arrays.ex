array = :array.new()

IO.inspect(array)

array = :array.set(0, "Alex Koutmos", array)
IO.inspect(array)

array = :array.set(1, "Bob Smith", array)
IO.inspect(array)

array = :array.set(2, "Jannet Angelo", array)
IO.inspect(array)

IO.puts :array.get(1, array)
IO.puts :array.get(2, array)
