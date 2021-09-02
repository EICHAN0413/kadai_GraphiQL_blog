module Mutations
  class CreateBlog < BaseMutation
    field :blog, Types::BlogType, null: true

    argument :title, String, required: true
    argument :content, String, required: false

    def resolve(**args)
      blog = Blog.create!(args)
      {
        blog: blog
      }
    end
  end
end
