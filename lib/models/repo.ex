defmodule Repo do
	use Ecto.Repo, otp_app: :chat, adapter: Mongo.Ecto
	
end