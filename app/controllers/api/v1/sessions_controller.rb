class Api::V1::SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    render json: {message: "Successfully created"}
  end

  def destroy
  end
end