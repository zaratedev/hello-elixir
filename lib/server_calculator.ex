defmodule ServerCalculator do
  use GenServer

  def add(pid, x, y) do
    GenServer.call(pid, {:add, x, y})
  end

  def init(args) do
    IO.puts "Start server calculator"
    IO.inspect args
    {:ok, %{count: 0}, 3000}
  end

  def terminate(_reason, _state) do
    IO.puts "Game over"
    nil
  end

  def handle_call({:add, x, y}, _from, %{count: count}) do
    IO.puts "handle_call(:add, #{x}, #{y})"
    result = x + y
    {:noreply, result, %{count: count + 1}}
  end

  def handle_call({:div, x, y}, _from, state) do
    if y == 0 do
      {:stop, "Division by zero", state}
    else
      {:reply, x / y, state}
    end
  end

  def handle_cast(:reset, _state) do
    IO.puts "handle_cast(:reset)"
    {:noreply, %{count: 0}}
  end

  def handle_info(:hello, %{count: count}) do
    IO.puts "Count #{count}"

    {:noreply, %{count: count + 1}}
  end

  def handle_info(msg, state) do
    IO.inspect msg, label: "INFO"
    {:noreply, state}
  end
end
