class MerchantsController < ApplicationController
    def index
        @merchants = Merchant.all
        render json: @mrechants
    end
end
