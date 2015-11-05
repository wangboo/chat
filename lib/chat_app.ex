defmodule Chat.App do
	use Application

	def start(_type, _args) do
		import Supervisor.Spec 
		child = [worker(Repo, [])]
		opts  = [strategy: :one_for_one, name: Chat.Sup]
		Supervisor.start_link(child, opts)
	end

end