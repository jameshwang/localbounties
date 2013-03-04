module Api
  class BountiesController < BaseController
    before_filter :authenticate_user!, :only => [:create, :update, :accept, :complete, :reset]
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

    def available
      @bounty = Bounty.find(params[:id])

      if @bounty.make_available
        head :no_content
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end
    end

    # POST /bounties/1/accept
    def accept
      @bounty = Bounty.find(params[:id])
      hunter = current_user

      if @bounty.accept(hunter)
        render json: @bounty.to_json
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end
    end

    # POST /bounties/1/complete
    def complete
      @bounty = Bounty.find(params[:id])
      hunter = User.find(params[:hunter_id])

      if @bounty.complete(hunter)
        head :no_content
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end
    end

    # POST /bounties/1/reset
    def reset
      @bounty = Bounty.find(params[:id])

      if @bounty.reset_status
        head :no_content
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end
    end
  end
end