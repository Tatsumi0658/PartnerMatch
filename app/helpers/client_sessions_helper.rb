module ClientSessionsHelper
  def current_client
    @current_client ||= Client.find_by(id: session[:client_id])
  end
end
