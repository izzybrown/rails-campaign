class EventCampaign < ActiveRecord::Base
  class Create < Trailblazer::Operation
    extend Contract::DSL

    contract do
      property :title
      property :startdate
      property :budget
      property :brief

      validates :title, presence: true
      validates :startdate, presence: true, startdate_in_future: true
      validates :budget, presence: true
      validates :brief, presence: true
    end

    step Model(Campaign, :new)
    step Contract::Build()
    step Contract::Validate(key: :eventcampaign)
    step :persist!
    step :notify!
  end
end

