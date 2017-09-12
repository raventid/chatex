defmodule ChatexWeb.PageController do
  use ChatexWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
