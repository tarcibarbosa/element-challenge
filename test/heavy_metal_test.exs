defmodule HeavyMetalTest do
  use ExUnit.Case, async: true
  doctest HeavyMetal

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
  @default_response %{name: "Iridium", number: 77, weight: 192}

  test "successfuly return the most heavy element of the list" do
    assert HeavyMetal.heavy_metal(@default_list_elements) == @default_response
  end

  test "calling heavy metal function without sending list and getting error" do
    assert HeavyMetal.heavy_metal(nil) == :error
  end

  test "calling heavy metal function with empty list and getting error" do
    assert HeavyMetal.heavy_metal([]) == :error
  end

  test "calling the function heavy metal with an object out the pattern and getting error" do
    assert HeavyMetal.heavy_metal([%{id: 1, name: "nitrogen"}]) == :error
  end
end
