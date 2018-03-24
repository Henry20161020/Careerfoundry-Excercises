class PaymentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @product = Product.find(params[:product_id])
    @user = current_user

    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price*100).to_i,
        currency: "usd",
        source: token,
        description: params[:stripeEmail]
      )
      if charge.paid
        order=Order.create(
          product_id: @product.id,
          user_id: @user.id,
          total: @product.price
        )

        flash[:notice] = "Your payment was processed successfully"
        UserMailer.thank_you(@user.email, @user.first_name, Order.last.id).deliver_later

        if !order.save
          ActionMailer::Base.mail(from: 'CustomerService@saware.com', to: 'henryli76@gmail.com', subject: "Order Creation Failure", body: 'Product'+@product.id+',User'+@user.id+',Total'+@product.price).deliver_later
        end
      end
    rescue Stripe::CardError => e
      # The card has been declined
      byebug
      body = e.json_body
      err = body[:error]
      flash[:alert] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
      redirect_to product_path(@product)
    end

  end
end
