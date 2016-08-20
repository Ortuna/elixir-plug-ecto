defmodule Router do
  use Plug.Router

  plug :match
  plug :dispatch

  forward "/users", to: UsersRouter

  match _ do
    send_resp(conn, 404, "oops")
  end


end

