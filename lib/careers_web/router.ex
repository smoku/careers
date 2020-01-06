defmodule CareersWeb.Router do
  use CareersWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CareersWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/components", PageController, :components
  end

  # Other scopes may use custom stacks.
  # scope "/api", CareersWeb do
  #   pipe_through :api
  # end
end
