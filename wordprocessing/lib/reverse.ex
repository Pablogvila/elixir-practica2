defmodule Reverse do

	defp listen() do
		receive do
			:stop -> :ok
			listen()
		end
	end

	def start() do Process.register(spawn(fn -> listen() end), :reverse) end

	def stop() do
		send(:reverse, :stop)
		Process.unregister(:reverse)
	end

	def service_reverse(w) do
		IO.puts("Reverse service")
		process_word(w)
	end

	def process_word(w) do
		String.reverse(w)
	end
end