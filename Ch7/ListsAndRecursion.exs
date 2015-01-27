defmodule MyList2 do 
  def sum([]),              do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def mapsum( [], _func ),             do: 0
  def mapsum( [ head | tail ], func ), do: func.(head) + mapsum(tail, func)

  def max([ x ]),           do: x 
  def max([ head | tail ]), do: Kernel.max(head, max(tail))

  def caesar( [], _n ), do: []
  def caesar([ head | tail ], n), do: [ add_code(head, n) | caesar(tail, n) ]
  defp add_code( num, n ) when num + n > 122, do: add_code(96, num + n - 122) 
  defp add_code( num, n ), do: num + n

  def span(from, to) when from > to, do: []
  def span(from, to), do: [ from | span(from + 1, to) ]
end 