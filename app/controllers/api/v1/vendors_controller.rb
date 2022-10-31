class Api::V1::VendorsController < ApplicationController
    def index
        vendors = Vendor.all
        pp vendors
        render(json: vendors, status: :ok)
    end

    def create 
        #@user = User.create(first_name: params[:first_name] ,last_name: paramas[:last_name], email: params[:email], password: params[:password])
        vendor = Vendor.create!(vendor_params)

        if vendor
            render(json: vendor, status: :created)

        else 
            render(json: { message: "There was an error creating vendor " } , status: :bad_request)
        end
    end

    def show
        #debugger 
        @vendor = Vendor.find(params[:id])
        render(json: @vendor, status: :ok)
    end

    def destroy
        @vendor = Vendor.find(params[:id])
        if @vendor.destroy!
            render(json: { message: "The vendor was deleted"}, status: :ok)
          else
            render(json: { errors: @vendor.errors.full_messages }, status: :bad_request)
          end
    end

    def update
        @vendor = Vendor.find(params[:id])
        @vendor.update(vendor_params)
        render(json: @vendor, status: :updated)
    end

    private 
    def vendor_params
        params[:vendor][:school_id] = params[:school_id]
        params.require(:vendor).permit(:first_name, :last_name, :email, 
            :phone_number, :school_id)
      end
end