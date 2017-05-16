class PublicPartialsController < ApplicationController

  def show
    render "public_partials/_#{params[:path]}"
  end
end
