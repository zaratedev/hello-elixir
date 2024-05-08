defmodule Hello do
  def say do
    receive do
      {pid, x} -> send(pid, "Hello, #{x}")
    end

    say()
  end
end
