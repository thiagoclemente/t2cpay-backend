defmodule T2cpayWeb.UsersController do
  use T2cpayWeb, :controller

  alias T2cpay.User

  def create(conn, params) do
    params
    |> T2cpay.create_user()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %User{} = user}, conn) do
    conn
    |> put_status(:created)
    |> render("create.json", user: user)
  end

  defp handle_response({:error, result}, conn) do
    conn
    |> put_status(:bad_request)
    |> put_view(T2cpayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
