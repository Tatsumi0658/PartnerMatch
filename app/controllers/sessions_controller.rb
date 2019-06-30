class SessionsController < ApplicationController
  def new
  end

  def create
    partner = Partner.find_by(email: params[:session][:email].downcase)
    if partner && partner.authenticate(params[:session][:password])
      session[:partner_id] = partner.id
      redirect_to partners_path
    else
      :new
    end
  end

  def destroy
    session.delete(:partner_id)
    redirect_to new_session_path
  end
end
