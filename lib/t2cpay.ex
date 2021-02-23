defmodule T2cpay do
  alias T2cpay.Users.Create, as: UserCreate
  defdelegate create_user(params), to: UserCreate, as: :call
end
