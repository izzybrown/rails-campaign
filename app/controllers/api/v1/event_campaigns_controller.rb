class Api::V1::EventCampaignsController < Api::V1::BaseController

  before_action :set_event_campaign, only: [:show, :destroy]

  def index
    @event_campaigns = EventCampaign.all
  end

  def show
  end

  def update
  if @event_campaign.update(event_campaign_params)
    render :show
  else
    render_error
    end
  end

  def create
    @event_campaign = EventCampaign.new(event_campaign_params)
    if @event_campaign.save
      render :show, status: :created
    else
      render_error
    end
  end

   def destroy
    @event_campaign.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_event_campaign
    @event_campaign = EventCampaign.find(params[:id])
  end

  def event_campaign_params
    params.require(:event_campaign).permit(:title, :startdate, :budget, :bried)
  end

  def render_error
    render json: { errors: @event_campaign.errors.full_messages },
      status: :unprocessable_entity
  end
end
