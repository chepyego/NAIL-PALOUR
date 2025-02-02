class Avo::Resources::User < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :email_address, as: :text
    field :sessions, as: :has_many
    field :password, as: :password, hide_on: [ :index, :show ]
    field :password_confirmation, as: :password, hide_on: [ :index, :show ]
    field :image, as: :file, is_image: true
    field :bookings, as: :has_many
  end
  # grid do
  #   email_address :email_address, as: :text
  # end
end
