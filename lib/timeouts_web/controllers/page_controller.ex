defmodule TimeoutsWeb.PageController do
  use TimeoutsWeb, :controller

  def index(conn, _params) do
    # IO.puts("waiting...")
    # :timer.sleep(5_000)
    # IO.puts("Killing self...")
    # # This works...
    # Process.exit(self(), :normal)
    # # This doesn't
    # # Process.exit(self(), :kill)

    GenServer.call(Timeouts.MyGenServer, :ping)

    render(conn, "index.html")
  end
end
