module Types
  class MutationType < Types::BaseObject
    field :createBlog, mutation: Mutations::CreateBlog
  end
end
