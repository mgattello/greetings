class SynonymsController < ApplicationController
    def create
        hello_find
        @synonym = @hello.synonyms.create(synonym_params)
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
