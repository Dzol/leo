defmodule Leo do
  def fibonacci(0) do
    0
  end

  def fibonacci(1) do
    1
  end

  def fibonacci(x) do
    fibonacci(x - 1) + fibonacci(x - 2)
  end
end
