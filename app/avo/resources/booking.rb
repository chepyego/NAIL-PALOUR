class Avo::Resources::Booking < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :user, as: :belongs_to
    field :service, as: :belongs_to
    field :date, as: :date_time
    field :status, as: :select, options: { pending: "Pending", confirmed: "Confirmed", completed: "Completed" }
  end
end
