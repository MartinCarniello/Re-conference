LaReConference::App.controllers :crear_propuesta do
  
  get :crear_propuesta, :map => '/crear_propuesta/:id_conferencia' do
    @crear_propuesta_active = "active"
    @conferencia = Conferencia.first(id: params[:id_conferencia])
    @propuesta = Propuesta.new
    @propuesta.conferencia = @conferencia

    render 'crear_propuesta/index'
  end

  post :create, with: :id_conferencia do
      id_conferencia = params[:id_conferencia]
    	titulo = params[:propuesta][:titulo]
    	descripcion = params[:propuesta][:descripcion]
      conferencia = Conferencia.first(id: id_conferencia)

    	@propuesta = Propuesta.create(titulo: titulo, descripcion: descripcion, conferencia: conferencia)
      conferencia.propuestas.push(@propuesta)
    	if @propuesta.save
          
      		flash[:success] = 'Propuesta creada'
      		redirect '/'
    	else
      		flash.now[:error] = 'Error al intentar crear la propuesta'
      		redirect '/'
  	  end
  end
end