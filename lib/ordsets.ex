set = :ordsets.new()

IO.inspect set

set = :ordsets.add_element("Jane Smith", set)

IO.inspect set

set = :ordsets.add_element("Alex Koutmos", set)

IO.inspect set

set = :ordsets.add_element("Alex Koutmos", set)

IO.inspect set

IO.inspect :ordsets.to_list(set)
