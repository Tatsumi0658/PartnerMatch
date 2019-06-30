module SessionsHelper
  def current_partner
    @current_partner ||= Partner.find_by(id: session[:partner_id])
  end
end
