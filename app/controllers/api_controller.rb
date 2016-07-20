class ApiController < ApplicationController
  skip_before_action :verify_autheniticity_token

  protect_from_forgery with: :null_session, if: proc { |c| c.request.format == 'application/json' } # rubocop:disable LineLength

  private

  def authenticated?
    authenticate_or_request_with_http_basic { |username, password| User.where(username: username, password: password).present? } # rubocop:disable LineLength
  end
end
