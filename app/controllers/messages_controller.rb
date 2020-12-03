class MessagesController < ActionController::API
  include Response
  include ExceptionHandler
  
  def index
  	@messages = Message.all
    json_response(@messages)
  end
  
  def create
    @message = Message.create!(message_params)
    render json: message_url(@message), status: :created
    # json_response(@message, :created)
  end

  def show
  	@message = Message.find(params[:id])
  	if @message.readed == false
  	  @message = Message.find(params[:id])
  	  # render json: @message, fields: %i[id], adapter: :json
  	  @message.update_attribute(:readed, true)
      json_response(@message)
  	else
  	  render plain: "message alrady readed"
  	end
  end

  def message_params
    params.permit(:readed)
  end
end
