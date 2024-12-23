# Wasm compnent example

This is a repo of example components to show off component support in wasmex

## Prequisites

Until we have a release of wasmex supporting components, you will need to have rust installed to be able to build wasmex. 

## Running

To run:

```
mix deps.get
WASMEX_BUILD=true iex -S mix
```

Then, to interact with Example1 using its Genserver:

```elixir
iex(3)> bytes = File.read!("./example1/example1.wasm")
<<0, 97, 115, 109, 13, 0, 1, 0, 7, 13, 1, 66, 1, 4, 0, 5, 101, 114, 114, 111,
  114, 3, 1, 10, 24, 1, 1, 19, 119, 97, 115, 105, 58, 105, 111, 47, 101, 114,
  114, 111, 114, 64, 48, 46, 50, 46, 48, 5, 0, 7, ...>>
iex(4)> {:ok, pid } = Example1.start_link(bytes: bytes, wasi: %Wasmex.Wasi.WasiP2Options{})
{:ok, #PID<0.215.0>}
iex(5)> Example1.writer(pid)
{:ok, "Hello world!"}
iex(6)> Example1.add_from_record(pid, %{a: 1, b: 2, c: 3})
{:ok, 6}
```



