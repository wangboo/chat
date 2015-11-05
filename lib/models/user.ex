
defmodule User do
	use Ecto.Model
	import Ecto.Query

	@primary_key {:id, :binary_id, autogenerate: true}
	schema "user" do 
		field :name
		field :pwd
		field :nickname, :string, default: "unknown"
		field :age, :integer, default: 0
		field :level, :integer, default: 0
		field :score, :integer, default: 0
	end 

	def find_by_name(name) do 
		query = from w in User, where: w.name == ^name 
		Repo.one(query)
	end

end