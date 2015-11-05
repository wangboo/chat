defmodule Chat.Server do

	def start_link(_state, _otps) do 
		port = Application.get_env(:chat, :port, 3000)
		{:ok, ll} = :gen_tcp.listen(port, [:binary, package: 0, reuseaddr: true, active: false, nodelay: false])
		:gen_tcp.accept(ll, 3000)
	end
	
end