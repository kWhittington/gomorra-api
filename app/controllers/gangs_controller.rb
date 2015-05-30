# The controller class for handling Gang-related requests.
class GangsController < ApplicationController
  expose(:gang, attributes: :gang_params)
  expose(:gangs)

  # GET /gangs
  # GET /gangs.json
  def index
    render json: GangSerializer.serialize(gangs, is_collection: true)
  end

  # GET /gangs/1
  # GET /gangs/1.json
  def show
    render json: GangSerializer.serialize(gang)
  end

  private

  def gang_params
    params.require(:gang).permit(:name)
  end
end
