defmodule EmployeeMgtSystemTest do
  use ExUnit.Case
  doctest EmployeeMgtSystem

  test "greets the world" do
    assert EmployeeMgtSystem.hello() == :world
  end
end
