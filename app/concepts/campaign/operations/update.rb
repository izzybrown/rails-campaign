class EventCampaign < ActiveRecord::Base
  class Update < Trailblazer::Operation
    class Present < Trailblazer::Operation
      step Model(EventCampaign, :find_by)
      step Contract::Build(constant: EventCampaign::Contract::Create)
    end

    step Nested(Present)
    step Contract::Validate(key: :startdate)
    step Contract::Persist()
  end
end
