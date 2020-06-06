class SalesController < ApplicationController
    def index
        @sales = Sale.all
        render json: @sales
    end

    def create
        user = User.find_or_create_by(firebaseId: params[:firebaseId])
        
        newSaleRecords = params[:data]
        newSaleRecords.each{|sale|
            customerName = sale[0]
            itemDescription = sale[1]
            itemPrice = sale[2]
            saleQuantity = sale[3]
            merchantName = sale[4]
            merchantAddress = sale[5]
            customer = Customer.find_or_create_by(name: customerName)
            merchant = Merchant.find_or_create_by(name: merchantName, address: merchantAddress )
            item = Item.create(description: itemDescription, price: itemPrice, merchant: merchant)
            sale = Sale.create(customer: customer, item: item, user: user, quantity: saleQuantity)
          
        }

        render json: {message: "successfully saved to database"}
    end 

    def destroy
        user = User.find_or_create_by(firebaseId: params[:id])
        user.sales.destroy_all
        render json: {message: "destroyed all data"}
    end
end
