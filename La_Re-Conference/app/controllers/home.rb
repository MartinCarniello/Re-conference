LaReConference::App.controllers :home do
  
  get :index, :map => '/' do
  	@home_active = "active"
    render 'home/index'
  end

end
