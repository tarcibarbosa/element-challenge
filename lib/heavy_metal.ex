defmodule HeavyMetal do
  @moduledoc """
  Documentation for `HeavyMetal`.
  """

  alias ElementsMetalVerification, as: Elements
  alias ObjectValidation, as: Valid

  def heavy_metal([]), do: :error

  @doc """
  Accepts a list of element maps and returns a list of maps with the heaviest 
  elements.

  ## Examples
      iex> elements = [
      iex>  %{
      iex>      number: 77 ,
      iex>      name: "Iridium", 
      iex>      weight: 192
      iex>    }, 
      iex>    %{
      iex>      name: "Hydrogen",
      iex>      number: 1,
      iex>      weight: 1
      iex>  }] 
      iex>HeavyMetal.heavy_metal(elements)
      iex>%{number: 6, name: "Carbon", weight: 12}
  """
  def heavy_metal(elements) when is_list(elements) do
    if Valid.has_keys?(elements) do
      Elements.elements_metal_validation(elements)
      |> most_heavy_metal()
    else
      :error
    end
  end

  def heavy_metal(_), do: :error

  defp most_heavy_metal(elements) do
    Enum.max_by(elements, fn e -> e.weight end)
  end
end
