class GossipsController < ApplicationController
    def new

    end

    def create
        @gossip = Gossip.new
        @gossip.anonymous_author = params['auteur']
        @gossip.content= params['content']
        @gossip.save
        
        redirect_to gossip_path(@gossip.id)

    end

    def show
        @gossip = Gossip.find(params[:id])
    end

    def edit
        @gossip = Gossip.find(params[:id])
    end

    def update
    @gossip = Gossip.find(params[:id])
    @gossip.content = params["content"]
    @gossip.anonymous_author = params["auteur"]
    @gossip.save
    redirect_to gossip_path
    end

    def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
    end

    def index
        @gossips = Gossip.all
    end
end
