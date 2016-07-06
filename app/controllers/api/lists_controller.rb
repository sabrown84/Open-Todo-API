class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    user = User.find(params[:user_id])
    list = user.lists.build(params.require(:list).permit(:title, :permissions))

    if list.save
      render json: list, status: 201
    else
      render json: {}, status: 422
    end
  end
end
