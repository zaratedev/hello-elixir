defmodule Calculator do
  def calculator(count) do
    receive do
      {pid, :+, a, b} -> send(pid, a + b)
      {pid, :-, a, b} -> send(pid, a - b)
      {pid, :x, a, b} -> send(pid, a * b)
      {_pid, :/, _a, 0} -> exit("division by zero")
      {pid, :/, a, b} -> send(pid, a / b)
      {pid, :count} -> send(pid, count)
    end

    calculator(count + 1)
  end
end

# Concurrent examples
# pid = spawn(Calculator, :calculator, []);

# send(pid, {self(), :+, 2, 2})
# send(pid, {self(), :-, 10, 5})
# send(pid, {self(), :x, 4, 4})
# send(pid, {self(), :/, 10, 2})

# Error
# send(pid, {self(), :/, 10, 0})
