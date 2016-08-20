defmodule UsersRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    users = User
      |> Repo.all
      |> Poison.encode!

    conn
      |> put_resp_content_type("application/json")
      |> send_resp(200, users )
  end
end

