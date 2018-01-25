class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:show, :edit, :update, :destroy]


  def index
    @orders = Order.includes(:product).all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    def check_user
      @user = User.find(@order.user_id)
      if current_user != @user
        redirect_to orders_path, alert: "your are not authorized to access this page"
      end
    end

end
