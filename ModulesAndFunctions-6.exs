defmodule Chop do 

  def is_number?(guess, actual), do: guess === actual
  def is_above?(guess, actual), do: guess > actual

  def guess(actual, b..c) when b <= c and actual >= b and actual <= c do
    
    g = div(c+b,2)

    IO.puts "Is it #{g}"
    if is_number?(g,actual) do 
      IO.puts "#{g}"
    else
      if is_above?(g,actual) do
        guess(actual, b..g)
      else
        guess(actual, g..c)
      end
    end
  end

end
