defmodule T2cpay.NumbersTest do
  use ExUnit.Case

  alias T2cpay.Numbers

  describe "sum_from_file/1" do
    test "When there is file with the given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "When there is file with the given name, returns an error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Inválid file!"}}

      assert response == expected_response
    end
  end
end
