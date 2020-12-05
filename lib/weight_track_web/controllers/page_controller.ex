defmodule WeightTrackWeb.PageController do
  use WeightTrackWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
