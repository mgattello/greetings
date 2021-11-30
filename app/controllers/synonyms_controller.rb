class SynonymsController < ApplicationController
    http_basic_authenticate_with name: "name", password: "password", only: :destroy

    def create
        hello_find
        @synonym = @hello.synonyms.create(synonym_params)
        redirect_to hello_path(@hello)
    end

    def destroy
        hello_find
        @synonym = @hello.synonyms.find(params[:id])
        @synonym.destroy
        redirect_to hello_path(@hello)
    end

    private
        def synonym_params
            params.require(:synonym).permit(:word, :status)
        end

        def hello_find
            @hello = Hello.find(params[:hello_id])
        end
end
