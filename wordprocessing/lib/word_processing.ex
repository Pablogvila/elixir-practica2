import Directory

defmodule WordProcessing do

	def process() do
		[w,s] = input_data()
		r = send_data(w,s)
		print_result(w,s,r)
	end
	
	#Lectura de datos
	defp input_data() do
		word = String.trim(IO.gets("Write the input word: "),"\n")
		service = String.trim(IO.gets("Choose the service ([c]ount,[r]everse): "),"\n")
		[word,service]
		
	end

	#Envío de datos a servicio
	defp send_data(w,s) do
		IO.puts("Sending service request")
		request_service(w,s)
	end

	#Imprimir resultado
	defp print_result(w,s,r) do
		IO.puts("The result of service #{s} for word #{w} is #{r}")
	end	
end