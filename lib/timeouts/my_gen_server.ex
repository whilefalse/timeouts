defmodule Timeouts.MyGenServer do
  use GenServer

  def start_link(state) do
    IO.puts("start_link")
    bla = GenServer.start_link(__MODULE__, state, name: __MODULE__)
    IO.puts("start_link end")
    bla
  end

  def init(state) do
    IO.puts("init (+end)")
    {:ok, state}
  end

  def handle_call(:ping, _, state) do
    IO.puts("ping received, sleeping...")
    :timer.sleep(10_000)
    IO.puts("sleep over, replying")
    {:reply, :pong, %{}}
  end
end
