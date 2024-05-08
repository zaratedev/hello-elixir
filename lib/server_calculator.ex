defmodule ServerCalculator do
  use GenServer

  def init(args) do
    IO.puts "Start server calculator"
    IO.inspect args

    # {:ok, %{count: 0}}

    {:stop, "Error connection"}
  end

  def handle_call({:add, x, y}, _from, %{count: count}) do
    IO.puts "handle_call(:add, #{x}, #{y})"
    result = x + y
    {:reply, result, %{count: count + 1}}
  end

  def handle_cast(:reset, _state) do
    IO.puts "handle_cast(:reset)"
    {:noreply, %{count: 0}}
  end

  def handle_info(msg, %{count: count}) do
    IO.puts "Message #{msg}"
    IO.puts "Count #{count}"

    {:noreply, %{count: count + 1}}
  end
  def add(pid, x, y) do
    GenServer.call(pid, {:add, x, y})
  end
end
