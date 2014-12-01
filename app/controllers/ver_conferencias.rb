LaReConference::App.controllers :ver_conferencias do
  
  get :ver_conferencias, :map => '/ver_conferencias' do
  	@ver_conferencias_active = "active"
  	# if usuario_actual.role == "organizador"
  	# 	@conferencias = Conferencia.all(conferencia.account.nombre == usuario_actual.nombre)
  	# else
  	# 	@conferencias = Conferencia.all.reverse
  	# end
  	@conferencias = (usuario_actual.role == "organizador" || usuario_actual.role == "orador") ? Conferencia.all.reverse : []
    render 'ver_conferencias/index'
  end
  
end