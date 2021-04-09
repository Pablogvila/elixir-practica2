defmodule Count do

	defp listen() do
		receive do
			:stop -> :ok
			listen()
		end
	end
	
	def start() do Process.register(spawn(fn -> listen() end), :count) end

	def stop() do
		send(:count, :stop)
		Process.unregister(:count)
	end

	def service_count(w) do
		IO.puts("Count service")
		process_word(w)
	end
	
	def process_word(w) do
		String.length(w)
	end
end