# Class controls the items under lists
class Api < ApiController
  class ItemsController < ApiController
    before_action :authenticated?

    def create
      list = List.find(params[:list_id])
      item = list.items.build(params.require(:item).permit(:description))

      if item.save
        render json: item, status: 201
      else
        render json: {}, status: 422
      end
    end

    def update
      item = Item.find(params[:id])
      if item.update(item_params)
        render json: item
      else
        render json: { errors: items.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private

    def item_params
      params.require(:item).permit(:name, :completed, :list)
    end
  end
end
