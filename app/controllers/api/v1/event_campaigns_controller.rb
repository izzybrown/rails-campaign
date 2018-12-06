class Api::V1::EventCampaignsController < Api::V1::BaseController

  before_action :set_event_campaign, only: [ :show ]

  def index
    @event_campaigns = EventCampaign.all
  end

  def show
  end

  private

  def set_event_campaign
    @event_campaign = EventCampaign.find(params[:id])
  end

end
