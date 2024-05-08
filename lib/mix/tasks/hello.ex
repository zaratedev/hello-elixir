defmodule Mix.Tasks.Hello do
  @moduledoc """
  The hello mix tasks: `mix help hello`
  """
  use Mix.Task

  @shortdoc "Simply runs the Hello.say/0 function"
  def run(_command_line_args) do
    # calling our Hello.say() function from earlier
    Hello.say
  end
end
