defmodule Dictionary do

  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word() do
    word_list()
    |> Enum.random()
  end

  def func( t = { a, b } ) do
    tuple_b = is_tuple(t)
    IO.puts("a = #{a}, b = #{b}, is tuple = #{tuple_b}")
  end
end
