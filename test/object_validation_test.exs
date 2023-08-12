defmodule ObjectValidationTest do
  use ExUnit.Case, async: true
  doctest ObjectValidation

  @default_list_elements [
    %{
      name: "Neon",
      number: 10,
      weight: 20
    },
    %{
      name: "Iridium",
      number: 77,
      weight: 192
    },
    %{
      name: "Carbon",
      number: 6,
      weight: 12
    },
    %{
      name: "Hydrogen",
      number: 1,
      weight: 1
    }
  ]

  test "successfuly validete list os elements" do
    assert ObjectValidation.has_keys?(@default_list_elements) == true
  end

  test "calling the function with an object out the pattern and getting false result" do
    assert ObjectValidation.has_keys?([%{id: 1, name: "nitrogen"}]) == false
  end
end
