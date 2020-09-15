class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    #@offers = Offer.all
    #@offers = Offer.where(state: :enabled).order(premium: :desc)
    @offers = Offer.enabled.order_by_premium.order_by_remaining_time

    #@offers.sort_by {|offer| offer.premium?}
   # @offers = Offer.where.order(premium: :desc)

  end
end
