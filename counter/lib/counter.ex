defmodule Counter do
  def init(initial_value) do
    {:ok, pid} = Counter.Server.start_link(initial_value)
    pid
  end

  def value(pid) do
    GenServer.call(pid, {:value})
  end

  def increment(pid, amount) do
    GenServer.call(pid, {:increment, amount})
  end
end

defmodule Counter.Server do
  use GenServer

  def start_link(initial_value) do
    GenServer.start(__MODULE__, initial_value)
  end

  def handle_call({:value}, _from, state) do
    {:reply, state, state}
  end

  def handle_call({:increment, amount}, _from, state) do
    new_state = state + amount
    {:reply, new_state, new_state}
  end
end
