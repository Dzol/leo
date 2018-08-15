defmodule Leo.Application do
  use Application

  def start(_, _) do
    children = [
      Plug.Adapters.Cowboy2.child_spec(scheme: :http, plug: Leo.Router, options: [port: 4001])
    ]

    opts = [strategy: :one_for_one, name: Leo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
