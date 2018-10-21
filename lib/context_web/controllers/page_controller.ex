defmodule ContextWeb.PageController do
  use ContextWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
