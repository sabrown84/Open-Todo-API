class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    user = User.find(params[:user_id])
    list = user.lists.build(params.require(:list))

    if list.save
      render json: list, status: 201
    else
      render json: {}, status: 422
    end
  end

  def destroy
    begin
      list = List.find(params[:id])
      list.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end
end
