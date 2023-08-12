defmodule ObjectValidation do
  @moduledoc """
  Module to validate the object received in the main module. 
  Check the keys needed to process the stream.
  """

  @doc """
  validate object received
  
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
      iex> ObjectValidation.has_keys?(elements)
      iex> true
      iex> false
  """
  def has_keys?(elements) when is_list(elements) do
    Enum.all?(elements, fn element -> has_key?(element) end)
  end

  defp has_key?(element) when is_map(element) do
    Map.has_key?(element, :number) and Map.has_key?(element, :weight)
  end

  defp has_key?(_), do: false
end
