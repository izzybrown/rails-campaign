class EventCampaign < ApplicationRecord
  validate :startdate_in_future

  def startdate_in_future
    if startdate.present? && startdate < Date.today
      errors.add(:startdate, "has to be in the future")
    end
  end
end
