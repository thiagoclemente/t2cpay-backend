defmodule T2cpay.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      T2cpay.Repo,
      # Start the Telemetry supervisor
      T2cpayWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: T2cpay.PubSub},
      # Start the Endpoint (http/https)
      T2cpayWeb.Endpoint
      # Start a worker by calling: T2cpay.Worker.start_link(arg)
      # {T2cpay.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: T2cpay.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    T2cpayWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
