defmodule ElementsMetalVerificationTest do
  use ExUnit.Case
  doctest ElementsMetalVerification

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

  @default_response [%{name: "Iridium", number: 77, weight: 192}]

  test "successfuly return a list with metal elements" do
    elements = ElementsMetalVerification.elements_metal_validation(@default_list_elements)
    assert elements == @default_response
  end
end
