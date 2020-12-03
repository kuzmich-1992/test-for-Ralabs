class MessagesController < ActionController::API
  
  def index
  	@messages = Message.all
  end
  
  def create
    @message = Message.create!(message_params)
    render json: message_url(@message)
  end

  def show
  	@message = Message.find(params[:id])
  	if @message.readed == false
  	  @message = Message.find(params[:id])
  	  render json: @message, fields: %i[id], adapter: :json
  	  @message.update_attribute(:readed, true)
  	else
  	  render plain: "message alrady readed"
  	end
  end

  def message_params
    params.permit(:readed)
  end
end
