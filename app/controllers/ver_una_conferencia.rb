LaReConference::App.controllers :ver_una_conferencia do
  
  get :ver_conferencia, :map => '/ver_una_conferencia' do
  	@ver_una_conferencia_active = "active"
  	@conferencia = Conferencia.find(params[:conferencia])
    render 'ver_una_conferencia/index'
  end

  get :ver, :with => :id, :map => '/ver_una_conferencia/:id' do
  	@ver_una_conferencia_active = "active"
  	@conferencia = Conferencia.find(params[:id])
    render 'ver_una_conferencia/index'
  end
  
end