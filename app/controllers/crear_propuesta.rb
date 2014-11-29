LaReConference::App.controllers :crear_propuesta do
  
  get :crear_propuesta, :map => '/crear_propuesta/:id_conferencia' do
    @crear_propuesta_active = "active"
    @conferencia = Conferencia.first(id: params[:id_conferencia])
    @propuesta = Propuesta.new
    @propuesta.conferencia = @conferencia

    render 'crear_propuesta/index'
  end

  	post :create , with: :id_conferencia do

    	titulo = params[:propuesta][:titulo]
    	descripcion = params[:propuesta][:descripcion]
      conferencia = Conferencia.first(id: params[:id_conferencia])

    	propuesta = Propuesta.create(titulo: titulo, descripcion: descripcion, conferencia: conferencia)

    	if propuesta.save
          @conferencia.propuestas.push(propuesta)
      		flash[:success] = 'Propuesta creada'
      		redirect "ver_una_conferencia/#{conferencia.id}"
    	else
      		flash.now[:error] = 'Error al intentar crear la propuesta'
      		redirect "ver_una_conferencia/#{conferencia.id}"
    	end
  	end
  
end