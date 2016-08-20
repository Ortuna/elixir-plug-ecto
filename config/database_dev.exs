use Mix.Config
config :my_app, ecto_repos: [Repo]

config :my_app, Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_simple"
