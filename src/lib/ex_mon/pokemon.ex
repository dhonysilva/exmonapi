defmodule ExMon.Pokemon do
  alias ElixirLS.LanguageServer.Experimental.Protocol.Proto.Macros.Json
  @keys [:id, :name, :weight, :types]

  @enforce_keys @keys

  @derive Json.Encoder
  defstruct @keys

  def build(%{"id" => id, "name" => name, "weight" => weight, "types" => types}) do
    %__MODULE__{
      id: id,
      name: name,
      weight: weight,
      types: parse_types(types)
    }
  end

  defp parse_types(types), do: Enum.map(types, fn item -> item["type"]["name"] end)
end
