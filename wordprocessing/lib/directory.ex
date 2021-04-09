import Count
import Reverse

defmodule Directory do
	def request_service(w,s) do
		IO.puts("Performing service call")
		call_service(w,s)			
	end
	
	def call_service(w,"c")do
		service_count(w)
	end
	
	def call_service(w,"r")do
		service_reverse(w)
	end
end