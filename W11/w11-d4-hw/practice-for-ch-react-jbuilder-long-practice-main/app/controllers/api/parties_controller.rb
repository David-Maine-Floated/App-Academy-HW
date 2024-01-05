class Api::PartiesController < ApplicationController
  def index
    @parties = Party.all
    @guests = Party.includes(guests: [:gifts])
    render :index
  end

  def show
    @party = Party.find(params[:id])

    render :show
    # render :normalized_show
  end
end