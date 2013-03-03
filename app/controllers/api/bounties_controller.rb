module Api
  class BountiesController < BaseController
    respond_to :json

    def index
      @bounties = Bounty.all

      render json: @bounties
    end


    # GET /bounties/1.json
    def show
      @bounty = Bounty.find(params[:id])

      render json: @bounty
    end

    # POST /bounties.json
    def create
      @bounty = Bounty.new(params[:bounty])

      if @bounty.save
        render json: @bounty, status: :created, location: @bounty
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end

    end

    # PUT /bounties/1.json
    def update
      @bounty = Bounty.find(params[:id])

      if @bounty.update_attributes(params[:bounty])
        head :no_content
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end
    end

    # DELETE /bounties/1.json
    def destroy
      @bounty = Bounty.find(params[:id])
      @bounty.destroy

      head :no_content
    end
  end
end