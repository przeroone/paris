class Campign
  include Mongoid::Document
  field :st,  as: :status,   type: String
  field :uid, as: :user_id,  type: Integer
  field :dd,  as: :due_date, type: Date,   default: ->{ Date.today + 30.days }
  field :sub, as: :subject,  type: String
  field :det, as: :detail,   type: String

  #validates :user_id, presence: true
end
