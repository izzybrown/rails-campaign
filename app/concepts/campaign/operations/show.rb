class EventCampaign < ActiveRecord::Base
  class Show < Trailblazer::Operation
    step Model(EventCampaign, :find_by)
  end
end
