class ClientSessionsController < ApplicationController
  def new
  end

  def create
    client = Client.find_by(email: params[:client_session][:email].downcase)
    if client && client.authenticate(params[:client_session][:password])
      session[:client_id] = client.id
      redirect_to partners_path
    else
      :new
    end
  end

  def destroy
    session.delete(:client_id)
    redirect_to new_client_session_path
  end
end
