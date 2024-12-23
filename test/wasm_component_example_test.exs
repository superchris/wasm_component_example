defmodule WasmComponentExampleTest do
  use ExUnit.Case
  doctest WasmComponentExample

  test "greets the world" do
    assert WasmComponentExample.hello() == :world
  end
end
