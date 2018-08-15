defmodule Leo.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/fibonacci" do
    x =
      conn
      |> Plug.Conn.fetch_query_params()
      |> Map.fetch!(:params)
      |> Map.fetch!("number")
      |> String.to_integer()

    result = Leo.fibonacci(x)

    send_resp(conn, 200, Integer.to_string(result) <> "\n")
  end

  match _ do
    send_resp(conn, 404, "Oops!")
  end
end
