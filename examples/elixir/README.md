# Elixir Demo

## How to use

1. Run Docker container

```shell
docker run -d --name wordcut -p 8999:8999 veer66/wordcut-json-rpc-server
```

2. Install elixir dependnecies and compile

```
mix deps.get && mix deps.compile && mix compile
```

3. Use a client module to interact with server

Start elixir interactive shell with `iex -S mix` then

```elixir
iex> Client.put_delimiters(["กากากา", "|"])
{:ok, "กา|กา|กา"}
```

```elixir
iex> Client.put_delimiters("http://localhost:8999", ["กากากา", "|"])
{:ok, "กา|กา|กา"}
```
