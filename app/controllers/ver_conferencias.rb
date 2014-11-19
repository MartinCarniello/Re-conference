LaReConference::App.controllers :ver_conferencias do
  
  get :ver_conferencias, :map => '/ver_conferencias' do
  	@ver_conferencias_active = "active"
  	@conferencias = usuario_actual.rol == "Organizador" ? Conferencia.all.reverse : []
    render 'ver_conferencias/index'
  end
  
end