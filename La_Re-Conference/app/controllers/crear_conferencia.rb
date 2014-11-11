LaReConference::App.controllers :crear_conferencia do
  
  get :crear_conferencia, :map => '/crear_conferencia' do
    @crear_conferencia_active = "active"
    @conferencia = Conferencia.new
    render 'crear_conferencia/index'
  end

  	post :create do
    	titulo = params[:conferencia][:titulo]
    	descripcion = params[:conferencia][:descripcion]
    	fecha = Date::strptime(params[:conferencia][:fecha], "%Y-%m-%d")

    	conferencia = Conferencia.create(titulo: titulo, descripcion: descripcion, fecha: fecha)

    	if conferencia.save
      		flash[:success] = 'Conferencia creada'
      		redirect '/'
    	else
      		flash.now[:error] = 'No se ha podido crear la conferencia'
      		render 'crear_conferencia/index'
    	end
  	end
  
end