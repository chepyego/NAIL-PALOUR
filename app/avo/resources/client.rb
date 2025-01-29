class Avo::Resources::Client < Avo::BaseResource
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
    field :user, as: :belongs_to
  end
end
