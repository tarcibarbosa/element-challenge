defmodule ElementsMetalVerification do
  @moduledoc """
  Documentation for `ElementChallenge`.
  """

  @nonmetal [1, 6, 7, 8, 9, 10, 15, 16, 17, 18, 34, 35, 36, 53, 54, 85, 86]

  @doc """
  Accepts a list of element maps and returns a list of maps with the heaviest 
  elements.

  ## Examples
      iex> elements = [
      iex>  %{
      iex>      number: 28 ,
      iex>      name: "Nickel", 
      iex>      weight: 59
      iex>    }, 
      iex>    %{
      iex>      name: "Hydrogen",
      iex>      number: 1,
      iex>      weight: 1
      iex>  }] 
      iex> ElementsMetalVerification.elements_metal_validation(elements)
      iex>%{number: 6, name: "Carbon", weight: 12}
  """
  def elements_metal_validation(elements) do
    metal_elements = Enum.filter(elements, fn element -> nonmetal_searching?(element) end)
    metal_elements
  end

  defp nonmetal_searching?(%{number: number}) when number in @nonmetal, do: false
  defp nonmetal_searching?(%{number: _}), do: true
  defp nonmetal_searching?(_), do: :error
end
