class Api::V1::DocumentsController < ApplicationController
    def index
        @documents = Document.all    
    end

    def new 
        @document = Documnet.new
    end

    def create
        @document = Document.new(document_params)
        if @document.save
            render(json: {message: "Your document was succesfully uploaded", data: { document: @document}, error: false, success: true}, status: :ok)
        end
    end

    def destroy
        @document = Document.find(params[:id])
        @document.destroy
        render(json: {message: "Your document was succesfully deleted", error: false, success: true}, status: :ok)
    end

    private 
    def document_params
        pp params[:name]
        params.permit(:name, :attachment)
    end
end