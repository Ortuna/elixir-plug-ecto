defmodule User do
  use Ecto.Schema
  @derive {Poison.Encoder, only: [:id, :first_name, :last_name]}

  schema "users" do
    field :first_name
    field :last_name
  end
end
