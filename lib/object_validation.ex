defmodule ObjectValidation do
  @moduledoc """
  Module to validate the object received in the main module. 
  Check the keys needed to process the stream.
  """

  @doc """

  """
  def has_keys?(elements) when is_list(elements) do
    Enum.all?(elements, fn element -> has_key?(element) end)
  end

  defp has_key?(element) when is_map(element) do
    Map.has_key?(element, :number) and Map.has_key?(element, :weight)
  end

  defp has_key?(_), do: false
end
