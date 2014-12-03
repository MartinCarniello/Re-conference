LaReConference::App.controllers :ver_conferencias do
  
  get :ver_conferencias, :map => '/ver_conferencias' do
  	@ver_conferencias_active = "active"
    
    if usuario_actual.role == "evaluador"
      @conferencias = usuario_actual.conferencias
    else
      @conferencias = Conferencia.all.reverse
    end

    render 'ver_conferencias/index'
  end
  
end