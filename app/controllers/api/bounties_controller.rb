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
      if current_user.nil?
        render :status => 401
      end
      @bounty = Bounty.new(params[:bounty])
      @bounty.owner = current_user

      if @bounty.save
        render json: @bounty, status: :created, location: @bounty
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end

    end

    # PUT /bounties/1.json
    def update
      @bounty = Bounty.find(params[:id])
      unless current_user == @bounty.owner
        render :status => 401
      end

      if @bounty.update_attributes(params[:bounty])
        render json: @bounty.to_json
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
      unless current_user == @bounty.hunter
        render :status => 401
      end

      if @bounty.complete
        render json: @bounty.to_json
      else
        render json: @bounty.errors, status: :unprocessable_entity
      end
    end

  end
end