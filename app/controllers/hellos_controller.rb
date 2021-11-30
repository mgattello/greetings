class HellosController < ApplicationController
    # Devise rails engine and Authlogic are 2 other popular auth add-ons
    http_basic_authenticate_with name: "name", password: "password", except: [:index, :show]

    def index
      @hellos = Hello.all
    end
  
    def show
      hello_find
    end
  
    def new
      @hello = Hello.new
    end
    
    def create
      @hello = Hello.new(hello_params)
  
      if @hello.save
        redirect_to @hello
      else
        render :new
      end
    end

    def edit
      hello_find
    end
    
    def update
      hello_find
  
      if @hello.update(hello_params)
        redirect_to @hello
      else
        render :edit
      end
    end

    def destroy
      hello_find
      @hello.destroy
  
      redirect_to root_path
    end

    private
      def hello_params
        params.require(:hello).permit(:lang, :word, :status)
      end

      def hello_find
        @hello = Hello.find(params[:id])
      end
end

  
