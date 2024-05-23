set = :gb_sets.new()

set = :gb_sets.add_element(42, set)

IO.inspect set

set = :gb_sets.add_element(2, set)

IO.inspect set

set = :gb_sets.add_element(10, set)

IO.inspect set

set = :gb_sets.add_element(10, set)

IO.inspect set

IO.inspect :gb_sets.to_list(set)
