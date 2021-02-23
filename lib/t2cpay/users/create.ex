defmodule T2cpay.Users.Create do
  alias T2cpay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
