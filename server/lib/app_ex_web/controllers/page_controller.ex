defmodule AppExWeb.PageController do
  use AppExWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
