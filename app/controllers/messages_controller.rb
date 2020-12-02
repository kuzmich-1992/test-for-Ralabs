class MessagesController < ActionController::API
  
  def create
    @message = Message.create!(message_params)
    render json: message_url(@message)
  end

  def show
  	@message = Message.find(params[:id])
  	render json: @message
  end

  def message_params
    params.permit(:description)
  end
end
