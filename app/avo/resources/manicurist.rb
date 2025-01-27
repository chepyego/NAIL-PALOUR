class Avo::Resources::Manicurist < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :first_name, as: :text
    field :last_name, as: :text
    field :phone, as: :text
    field :experience, as: :text
    field :manicurist_image, as: :file, is_image: true

    field :user, as: :belongs_to
  end
end
