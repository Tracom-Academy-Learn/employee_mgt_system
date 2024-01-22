defmodule EmployeeMgtSystem.Repo do
  use Ecto.Repo,
    otp_app: :employee_mgt_system,
    adapter: Ecto.Adapters.Postgres
end
