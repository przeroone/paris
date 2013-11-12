class CampaignUpdate
  include Mongoid::Document
  include Mongoid::Timestamps
  field :det, as: :detail, type: String

  embedded_in :campaign
end
