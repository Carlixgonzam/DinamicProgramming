defmodule Calcu do
  def factorial(0), do: 1
  def factorial(n) when n > 0 do
    n*factorial(n-1)
  end

end

resultado= Calcu.factorial(6)
IO.puts("El factorial de 6 es #{resultado}")
