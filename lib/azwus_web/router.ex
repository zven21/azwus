defmodule AzwusWeb.Router do
  use AzwusWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AzwusWeb do
    pipe_through :api
  end
end
