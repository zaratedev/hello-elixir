defmodule ServerCalculator do
  use GenServer

  def init(args) do
    IO.puts "Start server calculator"
    IO.inspect args

    {:ok, %{count: 0}}
  end

  def handle_info(msg, %{count: count}) do
    IO.puts "Message #{msg}"
    IO.puts "Count #{count}"

    {:noreply, %{count: count + 1}}
  end
end
