defmodule Client do
  alias JSONRPC2.Clients.HTTP

  @url "http://localhost:8999"

  def put_delimiters(params) do
    put_delimiters(@url, params)
  end

  def put_delimiters(url, params) do
    HTTP.call(url, "put_delimiters", params)
  end
end
