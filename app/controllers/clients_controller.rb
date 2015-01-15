class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end
    
    def new
  	    @client = Client.new
  	    
    end
  
    def create
    	@client = Client.new(clients_params)
  	    if @client.save
  		    redirect_to(:action => 'index')
  	    else
  		    render ('new')
  	    end
    end
        
    
    private
    def clients_params
        params.require(:client).permit(:client_name, :client_contact, :client_conact_name, :client_adress,)
    end
end
