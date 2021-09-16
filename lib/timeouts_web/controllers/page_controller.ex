defmodule TimeoutsWeb.PageController do
  use TimeoutsWeb, :controller

  def index(conn, _params) do
    IO.puts("calling ping")
    res = GenServer.call(Timeouts.MyGenServer, :ping)
    IO.puts("ping call finished: #{inspect(res)}")
    render(conn, "index.html")
  end
end
