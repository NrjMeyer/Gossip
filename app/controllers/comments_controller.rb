class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(anonymous_commentor: params["anonymous_author"], body: params["body"])
		@gossip = Gossip.find(params[:gossip_id])
		@comment.gossip = @gossip
		@comment.save
		redirect_to gossip_path(@gossip.id)
	end
	
	def edit
        @gossip = Gossip.find(params[:gossip_id])
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        @gossip = Gossip.find(params[:gossip_id])
        @comment.update(anonymous_commentor: params["anonymous_author"], body: params["body"])
        redirect_to gossip_path(@comment.gossip_id)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to gossip_path(@comment.gossip_id)
    end

    
    private
    
    def comment_params
      params.permit(:anonymous_commentor, :body)
    end
end