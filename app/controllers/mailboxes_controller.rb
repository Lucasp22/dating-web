class MailboxesController < ApplicationController

  def index
    @mailboxes = Mailbox.where(:sender_id => @current_user.id)

  end

  def new
    @mailbox = Mailbox.new
    @receiver = User.where(:id => params[:id]).first
    @conversations = Conversation.where(:id => params[:id])
  end

  def create
    mailbox = Mailbox.new mailbox_params
    conversation = Conversation.new
    conversation.sender_id = @current_user.id
    conversation.receiver_id = extra_params[:receiver_id].to_i
    conversation.save
    mailbox.conversation_id = conversation.id
    mailbox.content = mailbox_params[:content]
    mailbox.sender_id = @current_user.id
    mailbox.save
    redirect_to conversations_path

  end

  def show
    @mailboxes = Mailbox.where(:conversation_id => params[:id])
    @conversations = Conversation.where(:id => params[:id])
      @receiver = @conversations.first.receiver_id
      @receiver_id = User.where(:id => @receiver.to_i)
  end

  def api_show
    mailboxes = Mailbox.where(:conversation_id => params[:id])
    conversations = Conversation.where(:id => params[:id])
      receiver = conversations.first.receiver_id
      receiver_id = User.where(:id => receiver.to_i)

      mailboxes_mapped = mailboxes.map{ |mailbox|

        JSON.parse(mailbox.to_json)[0] = {:data => mailbox, :sender_first_name => mailbox.sender.first_name }

       }
    render json: {
      conversation_id: params[:id],
      messages: mailboxes_mapped
    }

  end

  def mail
    mailbox = Mailbox.new
    mailbox.conversation_id = params[:id]
    mailbox.content = params[:content]
    mailbox.sender_id = @current_user.id
    mailbox.save


  end

  def api_mail
    mailbox = Mailbox.new
    mailbox.conversation_id = params[:id]
    mailbox.content = params[:content]
    mailbox.sender_id = @current_user.id
    mailbox.save


  end

  def destroy
  @mailbox =  Mailbox.find params[:id]
  @mailbox.destroy
  redirect_to mailboxes_path

end

  private
  def mailbox_params
    params.require(:mailbox).permit(:content, :sender_id, :conversation_id)
  end
  def extra_params
    params.require(:extra).permit(:receiver_id)
  end

end
