class EventCampaignsController < ApplicationController

  def index
    @event_campaigns = EventCampaign.all
  end
end
