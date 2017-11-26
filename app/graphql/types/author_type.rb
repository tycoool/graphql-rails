Types::AuthorType = GraphQL::ObjectType.define do
  name "AuthorType"

  field :first_name, !types.String
  field :last_name, !types.String
  field :birth_year, types.Int
  field :is_alive, types.Boolean

  field :full_name, types.String do
    description "The full name of an author"
    resolve ->(obj, _args, _ctx) {
      [obj.first_name, obj.last_name].compact.join(" ")
    }
  end

  field :id, types.ID
end
