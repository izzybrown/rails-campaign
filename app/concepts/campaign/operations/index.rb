class EventCampaign < ActiveRecord::Base
  class Index < Trailblazer::Operation
    step :model!

    def model!(options, *)
      options['model'] = ::EventCampaign.all
    end
  end
end
