class AdvertisementsController < ApplicationController
  load_and_authorize_resoure

  def index
    authorize! :manage, Advertisement
  end

end
