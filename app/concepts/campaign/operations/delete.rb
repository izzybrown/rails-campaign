class EventCampaign < ActiveRecord::Base
  class Delete < Trailblazer::Operation
    step Model(EventCampaign, :find_by)
    step :delete!

    def delete!(_options, model:, **)
      model.destroy
    end
  end
end
