defmodule EmployeeMgtSystem.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      EmployeeMgtSystemWeb.Telemetry,
      EmployeeMgtSystem.Repo,
      {DNSCluster, query: Application.get_env(:employee_mgt_system, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: EmployeeMgtSystem.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: EmployeeMgtSystem.Finch},
      # Start a worker by calling: EmployeeMgtSystem.Worker.start_link(arg)
      # {EmployeeMgtSystem.Worker, arg},
      # Start to serve requests, typically the last entry
      EmployeeMgtSystemWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EmployeeMgtSystem.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    EmployeeMgtSystemWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
